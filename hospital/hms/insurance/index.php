<?php
session_start();
error_reporting(0);
include("../include/config.php");

$popup_msg = '';
if(isset($_POST['submit']))
{
    $aadhar_raw = trim($_POST['aadhar']);
    $aadhar = mysqli_real_escape_string($con, $aadhar_raw);
    if(!preg_match('/^[0-9]{12}$/', $aadhar_raw)){
        $popup_msg = 'Please enter a valid 12-digit Aadhar number.';
    } else {
        $qry = mysqli_query($con, "SELECT * FROM aadhar_health WHERE person_aadhar='$aadhar' LIMIT 1");
        if($qry && mysqli_num_rows($qry) > 0){
            $row = mysqli_fetch_assoc($qry);
            $ins = strtoupper($row['insurance_status']);
            $linked = $row['linked_aadhar'];
            if($ins === 'SELF'){
                $popup_msg = 'Insurance available: SELF (you are the primary insured).';
            } elseif($ins === 'PARENT'){
                $popup_msg = 'Insurance available: PARENT (linked Aadhar: ' . htmlspecialchars($linked) . ').';
            } else {
                $popup_msg = 'No insurance found for this Aadhar number.';
            }
            $uip = $_SERVER['REMOTE_ADDR'];
            mysqli_query($con, "insert into userlog(username,userip,status) values('$aadhar','$uip',1)");
        } else {
            $uip = $_SERVER['REMOTE_ADDR'];
            mysqli_query($con, "insert into userlog(username,userip,status) values('$aadhar','$uip',0)");
            $popup_msg = 'No insurance record found for this Aadhar number.';
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Health Insurance Portal</title>
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../vendor/themify-icons/themify-icons.min.css">
    <link href="../vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
    <link href="../vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
    <link href="../vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="stylesheet" href="../assets/css/plugins.css">
    <link rel="stylesheet" href="../assets/css/themes/theme-1.css" id="skin_color" />
</head>
<body class="login">
    <div class="container-fluid" style="height: 100vh; display: flex; align-items: center;">
        <div class="row" style="width: 100%;">
            <!-- Left: Insurance Form -->
            <div class="col-xs-12 col-sm-6 col-md-6" style="display: flex; justify-content: center; align-items: center; padding: 20px;">
                <div class="main-login" style="width: 100%; max-width: 450px;">
                    <div class="logo margin-top-30">
                        <a href="../index.php"><h2>HMS | Health Insurance Portal</h2></a>
                    </div>

                    <div class="box-login">
                        <form class="form-login" method="post">
                            <fieldset>
                                <legend>Insurance Status Check</legend>
                                <p>
                                    Please enter your Aadhar number to check your insurance status.<br />
                                    <span style="color:red;"><?php echo isset($_SESSION['errmsg']) ? $_SESSION['errmsg'] : ''; $_SESSION['errmsg']='';?></span>
                                </p>
                                <div class="form-group">
                                    <span class="input-icon">
                                        <input type="text" pattern="[0-9]{12}" title="Enter 12-digit Aadhar number" class="form-control" name="aadhar" placeholder="Aadhar Number (12 digits)" required>
                                        <i class="fa fa-id-card"></i>
                                    </span>
                                </div>
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary pull-right" name="submit">
                                        Check Status
                                    </button>
                                </div>
                            </fieldset>
                        </form>

                        <div class="copyright">
                            <span class="text-bold text-uppercase">Health Insurance Portal</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right: Random Image -->
            <div class="col-xs-12 col-sm-6 col-md-6" style="display: flex; justify-content: center; align-items: center; padding: 20px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                <div style="text-align: center; color: white;">
                    <?php
                        // Array of random images from assets
                        $images = array(
                            '../assets/images/slider/banner1.jpg',
                            '../assets/images/slider/banner2.jpg',
                            '../assets/images/slider/banner3.jpg',
                            '../assets/images/gallery/img1.jpg',
                            '../assets/images/gallery/img2.jpg',
                            '../assets/images/gallery/img3.jpg'
                        );
                        
                        // Select random image
                        $randomImage = $images[array_rand($images)];
                        
                        // Check if file exists, if not use placeholder
                        if(!file_exists($randomImage)) {
                            $randomImage = 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" width="400" height="400"%3E%3Crect fill="%23667eea" width="400" height="400"/%3E%3Ctext x="50%25" y="50%25" font-family="Arial" font-size="24" fill="white" text-anchor="middle" dominant-baseline="middle"%3EHealth Insurance%3C/text%3E%3C/svg%3E';
                        }
                    ?>
                    <img src="<?php echo htmlspecialchars($randomImage); ?>" alt="Health Insurance" style="max-width: 100%; max-height: 500px; border-radius: 8px; box-shadow: 0 8px 32px rgba(0,0,0,0.2);">
                    <h3 style="margin-top: 20px; font-weight: 600;">Secure Your Health</h3>
                    <p style="font-size: 16px; opacity: 0.9;">Check your insurance coverage instantly with your Aadhar number</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Status Display Modal -->
    <div id="statusBackdrop" style="display:none;position:fixed;inset:0;background:rgba(0,0,0,0.5);z-index:2000;"></div>
    <div id="statusOverlay" style="display:none;position:fixed;top:50%;left:50%;transform:translate(-50%,-50%);z-index:2001;background:#fff;padding:20px;border-radius:8px;box-shadow:0 6px 24px rgba(0,0,0,0.2);max-width:90%;width:380px;text-align:center;">
        <h4 style="margin-top:0;margin-bottom:10px;">Insurance Check Result</h4>
        <div id="statusText" style="min-height:30px;"></div>
        <div style="margin-top:12px;"><button id="statusClose" type="button" class="btn btn-default">Close</button></div>
    </div>

    <!-- Scripts -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script>
        // Display popup on page load if there's a message
        var popup = <?php echo json_encode(trim($popup_msg)); ?>;
        if(popup && popup.length){
            document.addEventListener('DOMContentLoaded', function() {
                document.getElementById('statusText').textContent = popup;
                document.getElementById('statusBackdrop').style.display = 'block';
                document.getElementById('statusOverlay').style.display = 'block';
                
                document.getElementById('statusClose').addEventListener('click', function(){
                    document.getElementById('statusBackdrop').style.display = 'none';
                    document.getElementById('statusOverlay').style.display = 'none';
                });
                
                // Also close when clicking on the backdrop
                document.getElementById('statusBackdrop').addEventListener('click', function(){
                    document.getElementById('statusBackdrop').style.display = 'none';
                    document.getElementById('statusOverlay').style.display = 'none';
                });
            });
        }
    </script>
</body>
</html>
