<?php
session_start();

include_once('config.php');
 ?>
 
 <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catagories - Chat Room</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <style>
		.button1 {
			border-radius: 12px;
			background-color: #4CAF50;
		}
	</style>

</head>

<body>

    <div class="contact-clean" >
	<?php


				//	echo		$_SESSION['email'];
				//	echo	$_SESSION['password'];
			
					
					
					
							
		if (isset($_POST['logout'])){
			$result = mysqli_query($conn, "UPDATE user SET user_status = '0' WHERE user_email = '$_SESSION[email]';");
		session_destroy();
		header('location: index.php?logout_successfully=<span style="color:green">You have successfully Logged Out.</span>');
			
			}
			//echo '<form action="">';	

	?>

        <form method="post">
            <h1 class="text-center"><span style="text-decoration: underline;">Catagories</span></h1>
			<br>
            <div class="form-group">
                <h2><a href="chatroom.php"><li>Technology</a></h2>
            </div>
            <div class="form-group">
                <h2><a href="gaming.php"><li>Computer Gaming</a></h2>
            </div>
            <div class="form-group">
                <h2><a href="football.php"><li>Football</a></h2>
			</div>
			<div class="form-group">
                <h2><a href="cricket.php"><li>Cricket</a></h2>
            </div>
			<br><?php // echo	'Hello, '.$_SESSION['name']; ?>
            <!-- <button onclick="goBack()">Go Back</button> -->

			<button type="submit" name="logout"  style="float: right;" class="button1">Logout</button>
		</form>
        
		<br><br><br><br><br><br>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

<script>
function goBack() {
  window.history.back();
}
</script>
</body>

</html>