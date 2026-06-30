<?php
session_start();
error_reporting(0);
include("include/config.php");
if(isset($_POST['submit']))
{
$uname=$_POST['username'];
$upassword=$_POST['password'];

$ret=mysqli_query($con,"SELECT * FROM admin WHERE username='$uname' and password='$upassword'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
$_SESSION['login']=$_POST['username'];
$_SESSION['id']=$num['id'];
header("location:dashboard.php");

}
else
{
$_SESSION['errmsg']="Invalid username or password";

}
}
?>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin-Login</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
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
				<!-- Left: Admin Login Form -->
				<div class="col-xs-12 col-sm-6 col-md-6" style="display: flex; justify-content: center; align-items: center; padding: 20px;">
					<div class="main-login" style="width: 100%; max-width: 450px;">
						<div class="logo margin-top-30">
							<h2>Admin Login</h2>
						</div>

						<div class="box-login">
							<form class="form-login" method="post">
								<fieldset>
									<legend>
										Sign in to your account
									</legend>
									<p>
										Please enter your name and password to log in.<br />
										<span style="color:red;"><?php echo htmlentities($_SESSION['errmsg']); ?><?php echo htmlentities($_SESSION['errmsg']="");?></span>
									</p>
									<div class="form-group">
										<span class="input-icon">
											<input type="text" class="form-control" name="username" placeholder="Username">
											<i class="fa fa-user"></i> </span>
									</div>
									<div class="form-group form-actions">
										<span class="input-icon">
											<input type="password" class="form-control password" name="password" placeholder="Password"><i class="fa fa-lock"></i>
											 </span>
									</div>
									<div class="form-actions">
										
										<button type="submit" class="btn btn-primary pull-right" name="submit">
											Login <i class="fa fa-arrow-circle-right"></i>
										</button>
									</div>
									<a href="../../index.php">Back to Home Page</a>
									
								</fieldset>
							</form>

							<div class="copyright">
								<span class="text-bold text-uppercase">Hospital Management System</span>
							</div>
					
						</div>

					</div>
				</div>

				<!-- Right: Random Image -->
				<div class="col-xs-12 col-sm-6 col-md-6" style="display: flex; justify-content: center; align-items: center; padding: 20px; background: linear-gradient(135deg, #2c3e50 0%, #34495e 100%);">
					<div style="text-align: center; color: white;">
						<?php
							// Array of random images from assets
							$images = array(
								'assets/images/slider/banner1.jpg',
								'assets/images/slider/banner2.jpg',
								'assets/images/slider/banner3.jpg',
								'assets/images/gallery/img1.jpg',
								'assets/images/gallery/img2.jpg',
								'assets/images/gallery/img3.jpg'
							);
							
							// Select random image
							$randomImage = $images[array_rand($images)];
							
							// Check if file exists, if not use placeholder
							if(!file_exists($randomImage)) {
								$randomImage = 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" width="400" height="400"%3E%3Crect fill="%232c3e50" width="400" height="400"/%3E%3Ctext x="50%25" y="50%25" font-family="Arial" font-size="24" fill="white" text-anchor="middle" dominant-baseline="middle"%3EAdmin Management%3C/text%3E%3C/svg%3E';
							}
						?>
						<img src="<?php echo htmlspecialchars($randomImage); ?>" alt="Admin" style="max-width: 100%; max-height: 500px; border-radius: 8px; box-shadow: 0 8px 32px rgba(0,0,0,0.2);">
						<h3 style="margin-top: 20px; font-weight: 600;">Secure Admin Access</h3>
						<p style="font-size: 16px; opacity: 0.9;">Manage hospital operations with full administrative control</p>
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