<?php
header('Content-Type: application/json');
include('include/config.php');

$symptoms = '';
if($_SERVER['REQUEST_METHOD'] === 'POST'){
    if(isset($_POST['symptoms'])) $symptoms = trim($_POST['symptoms']);
}

if(!$symptoms){
    echo json_encode(['success'=>false,'message'=>'No symptoms provided']);
    exit;
}

$symptoms_l = strtolower($symptoms);

// Load mapping file if present (richer, data-driven)
$mappings_path = __DIR__ . '/ai_mappings.json';
$keywordMap = [];
if(file_exists($mappings_path)){
    $json = file_get_contents($mappings_path);
    $decoded = json_decode($json, true);
    if(is_array($decoded)) $keywordMap = $decoded;
}

// Load available specializations from DB
$availableSpecs = [];
$specRes = mysqli_query($con, "SELECT specilization FROM doctorSpecilization");
if($specRes){
    while($r = mysqli_fetch_assoc($specRes)){
        if(isset($r['specilization']) && $r['specilization']!=''){
            $availableSpecs[] = $r['specilization'];
        }
    }
}

// Scoring-based matcher: for each mapped specialization, count keyword hits
$scores = [];
foreach($keywordMap as $spec => $keywords){
    $spec_l = strtolower($spec);
    $scores[$spec] = 0;
    foreach($keywords as $kw){
        $kw_l = strtolower($kw);
        if($kw_l === '') continue;
        if(strpos($symptoms_l, $kw_l) !== false){
            $scores[$spec] += 1;
        }
    }
}

// pick best scoring spec
$matchedSpec = null;
arsort($scores);
foreach($scores as $spec => $score){
    if($score <= 0) break;
    // try to find a matching available specialization string
    foreach($availableSpecs as $s){
        if(stripos($s, $spec) !== false || stripos($s, explode(' ', $spec)[0]) !== false){
            $matchedSpec = $s; break 2;
        }
    }
    // fallback to using mapped spec name itself
    $matchedSpec = $spec; break;
}

// still not found: try direct word match against known specializations
if(!$matchedSpec){
    foreach($availableSpecs as $s){
        $s_l = strtolower($s);
        $parts = preg_split('/[^a-z0-9]+/i', $s_l);
        foreach($parts as $p){
            if($p && strpos($symptoms_l, $p) !== false){
                $matchedSpec = $s; break 2;
            }
        }
    }
}

if(!$matchedSpec){
    echo json_encode(['success'=>false,'message'=>'Could not identify a specialty from the symptoms. Try more details.']);
    exit;
}

// Query doctors for the matched specialization
$doctors = [];
$ms_esc = mysqli_real_escape_string($con, $matchedSpec);
$q = mysqli_query($con, "SELECT id,doctorName,docFees,contactno FROM doctors WHERE specilization='".$ms_esc."' LIMIT 20");
if($q){
    while($d = mysqli_fetch_assoc($q)){
        $doctors[] = $d;
    }
}

echo json_encode(['success'=>true,'specialization'=>$matchedSpec,'doctors'=>$doctors]);
exit;
