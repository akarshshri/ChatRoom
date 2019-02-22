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
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    	span{
    		color: black;
    	}
		.button1 {
		  background:#f4476b;
		  border:none;
		  border-radius:4px;
		  padding:11px;
		  box-shadow:none;
		  margin-top:26px;
		  text-shadow:none;
		  outline:none !important;
		}
		.button1:hover, .button1:active {
		  background:#eb3b60;
		}

		.button1:active {
		  transform:translateY(1px);
		}

		ul{
			position: relative;
			width: 450px;
			height: 100px auto 0;
			padding: 10px;
			box-sizing: border-box;
			
		}
		ul li{
			 display: flex;
			 background: rgba(253,138,231,0.7);
			 padding: 10px 20px;
			 color : #fff;
			 margin : 5px 0;
			 transition: .5s;
		}

	</style>

</head>

<body >

    <div class="contact-clean" style="background-color:;" >
	<?php


				//	echo		$_SESSION['email'];
				//	echo	$_SESSION['password'];
			
					
					
					
							
		if (isset($_POST['logout'])){
			$result = mysqli_query($conn, "UPDATE user SET user_status = '0' WHERE user_email = '$_SESSION[email]';");
		session_destroy();
		header('location: index.php');
		echo "Logged Out!";
			}
			//echo '<form action="">';	

	?>


<form method="post" >

        
            <h1 class="text-center"><span style="text-decoration: underline;">CATAGORIES</span></h1>
			<br>
            
                <ul >
                	<a href="chatroom.php">
                		<li style="margin-right: 10%;">
                			<span>
                				<i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                				Technology
                			</span>
                		</li>
                	</a>

                	<a href="gaming.php">
                		<li style="background: rgba(253,138,231,.4);margin-right: 10%;">
                			<span>
                				<i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                				Computer Gaming
                			</span>
                		</li>
                	</a>

                	<a href="football.php">
                		<li style="background: rgba(253,138,231,.2);margin-right: 10%;">
                			<span>
                				<i class="fa fa-dot-circle-o" aria-hidden="true"></i>
	                			 Football
	                		</span>
                		</li>
                	</a>

                	<a href="cricket.php">
                		<li style="background: rgba(253,138,231,.1); margin-right: 10%;">
                			<span>
                				<i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                				 Cricket
                			</span>
                		</li>
            		</a>
        </ul>









			<br><?php // echo	'Hello, '.$_SESSION['name']; ?>
            <!-- <button onclick="goBack()">Go Back</button> -->

			<button type="submit" name="logout"  style="float: right; margin-top: -5%; margin-left: -30%;" class="button1">Logout</button>
			 <br>
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