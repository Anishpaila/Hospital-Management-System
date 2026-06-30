<?php
session_start();
include("include/config.php");
error_reporting(0);
if(isset($_POST['submit']))
{
$uname=$_POST['username'];
$dpassword=md5($_POST['password']);	
$ret=mysqli_query($con,"SELECT * FROM doctors WHERE docEmail='$uname' and password='$dpassword'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
$_SESSION['dlogin']=$_POST['username'];
$_SESSION['id']=$num['id'];
$uid=$num['id'];
$uip=$_SERVER['REMOTE_ADDR'];
$status=1;
//Code Logs
$log=mysqli_query($con,"insert into doctorslog(uid,username,userip,status) values('$uid','$uname','$uip','$status')");

header("location:dashboard.php");
}
else
{

$uip=$_SERVER['REMOTE_ADDR'];
$status=0;
mysqli_query($con,"insert into doctorslog(username,userip,status) values('$uname','$uip','$status')");
echo "<script>alert('Invalid username or password');</script>";
echo "<script>window.location.href='index.php'</script>";

}
}
?>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Doctor Login</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
	</head>
	<body class="login">
		<div class="container-fluid" style="height: 100vh; display: flex; align-items: center;">
			<div class="row" style="width: 100%;">
				<!-- Left: Doctor Login Form -->
				<div class="col-xs-12 col-sm-6 col-md-6" style="display: flex; justify-content: center; align-items: center; padding: 20px;">
					<div class="main-login" style="width: 100%; max-width: 450px;">
						<div class="logo margin-top-30">
							<a href="../../index.php"><h2> HMS | Doctor Login</h2></a>
						</div>

						<div class="box-login">
							<form class="form-login" method="post">
								<fieldset>
									<legend>
										Sign in to your account
									</legend>
									<p>
										Please enter your name and password to log in.<br />
										<span style="color:red;"><?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg']="";?></span>
									</p>
									<div class="form-group">
										<span class="input-icon">
											<input type="text" class="form-control" name="username" placeholder="Email" required>
											<i class="fa fa-user"></i> </span>
									</div>
									<div class="form-group form-actions">
										<span class="input-icon">
											<input type="password" class="form-control password" name="password" placeholder="Password" required>
											<i class="fa fa-lock"></i>
											 </span>
											 <a href="forgot-password.php">
										Forgot Password ?
									</a>
									</div>
									<div class="form-actions">
										
										<button type="submit" class="btn btn-primary pull-right" name="submit">
											Login <i class="fa fa-arrow-circle-right"></i>
										</button>
									</div>
									
								
								</fieldset>
							</form>

							<div class="copyright">
								<span class="text-bold text-uppercase"> Hospital Management System</span>
							</div>
					
						</div>

					</div>
				</div>

				<!-- Right: Random Image -->
				<div class="col-xs-12 col-sm-6 col-md-6" style="display: flex; justify-content: center; align-items: center; padding: 20px; background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);">
					<div style="text-align: center; color: white;">
						<?php
							// Array of random images from assets
							$useImages = array(
								'assets/images/slider/banner1.jpg',
								'assets/images/slider/banner2.jpg',
								'assets/images/slider/banner3.jpg',
								'assets/images/gallery/img1.jpg',
								'assets/images/gallery/img2.jpg',
								'assets/images/gallery/img3.jpg'
							);
							
							// Select random image
							$randomImage = $useImages[array_rand($useImages)];
							
							// Check if file exists, if not use placeholder
							if(!file_exists($randomImage)) {
								$randomImage = 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" width="400" height="400"%3E%3Crect fill="%23e74c3c" width="400" height="400"/%3E%3Ctext x="50%25" y="50%25" font-family="Arial" font-size="24" fill="white" text-anchor="middle" dominant-baseline="middle"%3EMedical Expertise%3C/text%3E%3C/svg%3E';
							}
						?>
						<img src="<?php echo htmlspecialchars($randomImage); ?>" alt="Doctor" style="max-width: 100%; max-height: 500px; border-radius: 8px; box-shadow: 0 8px 32px rgba(0,0,0,0.2);">
						<h3 style="margin-top: 20px; font-weight: 600;">Professional Care</h3>
						<p style="font-size: 16px; opacity: 0.9;">Manage patient care and medical records with ease</p>
					</div>
				</div>
			</div>
		</div>
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	
		<script src="assets/js/main.js"></script>

		<script src="assets/js/login.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>
	
	</body>
	<!-- end: BODY -->
</html>