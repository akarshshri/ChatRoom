<html>
<?php
    include_once('config.php');


    $result = mysqli_query($conn , 'select * from country');
    if(!$result){
        echo 'query failed';}
?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Room</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="login-clean">
        <form method="post" action="process.php">
            <h2 class="sr-only">Login Form</h2>
			
				<!--<?php if( isset($_GET['registeration_successfull'])){ ?><?php echo $_GET['registeration_successfull']; ?>
				<?php } ?>
				-->
            <div class="illustration"><i class="icon ion-ios-navigate"></i></div>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email" required></div>
            <div class="form-group"><input class="form-control" type="password" name="pass1" placeholder="Password" required></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
			<center><b><a href="#register">Click Here</a> to register</b></center>
        </form>
    </div>
	
	
	
    <div class="register-photo" id="register">
        <div class="form-container">
            <form method="post"  action="insert.php">
                <h2 class="text-center"><strong>Create an account</strong></h2>
				<div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name" required /></div>
                <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email" required /></div>
                <div class="form-group">				
				<tr>
				<td> Country :   &nbsp </td>
				<td><select name="country">
				<?php while($row = mysqli_fetch_assoc($result)){ ?>
				<option value="<?php echo $row['country_id']; ?>"> <?php echo $row['country_name']; ?>
				</option>

				<?php } ?>
				</select></td><td><div id="city_display"></div>
				</td></tr>
				</div>
				<div class="form-group"><input class="form-control" type="password" name="pass1" placeholder="Password" required></div>
               
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Sign Up</button></div>
            </form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
