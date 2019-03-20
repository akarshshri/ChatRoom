<?php
session_start();
 ?>
<script>
	
function getText() {
	var $a =	document.getElementById('text').value;
	var a =	document.getElementById('text').value;
	if(a !== ''){
		
			
			xhr = new XMLHttpRequest();
			xhr.open('POST' , 'cricketchatdb.php',true);
			xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
			xhr.send('chat='+$a);
			xhr.onreadystatechange=function(){
				if (xhr.responseText){
				//	document.getElementById('chatarea').innerHTML=xhr.responseText;
										}
					}
		}
			
}

function getAnno() {
	var $a =	document.getElementById('ac').value;
	var a =	document.getElementById('ac').value;
	if(a !== ''){
		
			
			xhr = new XMLHttpRequest();
			xhr.open('POST' , 'anno_cricket.php',true);
			xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
			xhr.send('anno='+$a);
			xhr.onreadystatechange=function(){
				if (xhr.responseText){
				//	document.getElementById('chatarea').innerHTML=xhr.responseText;
										}
					}
		}
			
}
		
function clearText(){
	document.getElementById("textarea1").value = "";
}

function setText2(){
	
	xhr = new XMLHttpRequest();
	xhr.open('POST' , 'cricketchatFetch.php' , true);
	xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
	xhr.send();
	xhr.onreadystatechange = function(){
	//	alert(xhr.responseText);
			document.getElementById('chatarea').innerHTML = xhr.responseText;
			}
		
	}
	setInterval("setText2()",500);



	setInterval("setText()",500);

	function setText(){
	
	xhr2 = new XMLHttpRequest();
	xhr2.open('POST' , 'cricketannoFetch.php' , true);
	xhr2.setRequestHeader('content-type','application/x-www-form-urlencoded');
	xhr2.send();
	xhr2.onreadystatechange = function(){
	//	alert(xhr.responseText);
			document.getElementById('anno').innerHTML = xhr2.responseText;
			}
		
	}
	
setInterval("users()",3000);

	
	function users(){
	xhr1 = new XMLHttpRequest();
	xhr1.open('POST' , 'userFetch.php' , true);
	xhr1.setRequestHeader('content-type','application/x-www-form-urlencoded');
	xhr1.send();
	xhr1.onreadystatechange = function(){
	//	alert(xhr.responseText);
			document.getElementById('loginperson').innerHTML = xhr1.responseText;
			}
		
		
		}
		
		
</script>

<?php

include_once('config.php');

			echo '<center><img src="images/cricket.png" height="50px" style="margin-top:1%;"></center><hr>';
				//	echo		$_SESSION['email'];
				//	echo	$_SESSION['password'];
				$name = $_SESSION['name'];
				$arr = explode(' ',trim($name));
				
			echo	'<p styple="padding-left:10px"><h4 style="margin-left: 10%;">Hello, <b>'. $arr[0].'</b></p>'.'</h4>';
					
					
					
						
if (isset($_GET['logout'])){
	$result = mysqli_query($conn, "UPDATE user
SET user_status = '0'
WHERE user_email = '$_SESSION[email]';");
session_destroy();
header('location: index.php?logout_successfully=<span style="color:green">You have successfully Logged Out.</span>');
	
	}

?>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Technology - Chat Room</title>
	<style>
		.button1 {
		  background:#f4476b;
		  border:none;
		  border-radius:4px;
		  padding:5px;
		  box-shadow:none;
		  margin-top:4px;
		  text-shadow:none;
		  outline:none !important;
		}
		.button1:hover, .button1:active {
		  background:#eb3b60;
		}

		.button1:active {
		  transform:translateY(1px);
		}
	</style>
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
</head>
<body style="background-image: linear-gradient(to bottom right, lightblue, pink); ">
	<form action="">
		<a href="./catagories.php"><input type="button" class="button1" style="margin-top: -1%;float: right; margin-right: 20%; margin-top: -3%" value="Back" ></a>
		<button type="submit" name="logout" class="button1" style="margin-top: -1%;float: right; margin-right: 15%; margin-top: -3%">Logout</button>
	</form><br />
	<div class="wrapper">
		<!-- Future Use -->
		<div class="col-md-12">
			<center></center>
		</div>
		<!-- Future Use -->
		<div class="col-md-12">
			<center></center>
		</div>
		<!-- Main Chat Box -->
		<div class="container-fluid">
			<div class="row">
				<!-- Left for better padding-left -->
				<div class="col-md-1">
					
				</div>
				<!-- contains Chat Messages from users -->
				<div class="col-md-6" style="margin-right: -1%; margin-left: -1%;">
					<div class="col-md-12" id="chatarea">
						
					</div>
					<!-- Contains textarea to type -->
					<div class="col-md-12"  id="textbox">
						<textarea  id="text" cols="96" onfocus="this.value=''" style="margin-top: 3px;"></textarea>
						<center><input type="button" value="Send"  onclick="getText(); setTimeout(clearText, 2000)" class="button1"  /></center>
					</div>
				</div>
				<div class="col-md-2" style="margin-right: -1%; margin-left: -1%;">
					<div class="col-md-12" id="anno">
						
					</div>
					<div class="col-md-12" id="annoTextbox">
						<?php
						$management = mysqli_query($conn, "select management from user WHERE user_email = '$_SESSION[email]';");
						while ($row = $management->fetch_assoc()) {
						    $management_status =  $row['management']."<br>";
						}			
						//echo $management_status;
						if($management_status == 1){
							echo '<textarea  id="ac" cols="24"  style="margin-top: 1%;" class="input-group"></textarea>
							<center><input type="button" value="Send"  onclick="getAnno(); setTimeout(clearText, 2000)" class="button1" /></center>';
							//echo "inside if";
						}else{
								echo '<textarea  id="ac" cols="24"  style="margin-top: 1%;" class="input-group" disabled>Only management can Post announcements.</textarea>';
							//echo "inside else";
						}

						?>
					</div>
				</div>
				<div class="col-md-2 " id="loginperson">
					
				</div>
				<div class="col-md-1">
					
				</div>
			</div>	
		</div>

	</div>





	<style>
#chatbox{		
	border:single;
	height:500px;
	width:100%;
	align:center;
	border-radius: 5px;
	margin: auto;

}

#chatarea {
	width:100%;
	height:400px;
	border:double;
	float:left;
	overflow:auto;
	border-radius: 5px;

}

#loginperson {
	width:50%;
	height: 500px;
	border:double;
	float:left;
	border-radius: 5px;

}
	
#textbox {
	width:750px;
	height:100px;
	border:double;
	float:left;
	border-radius: 5px;

}

#chatting {
	border-radius: 5px;
	padding-left: 2px;
	float:left;
}

#anno {
	width:100%;
	height:400px;
	border:double;
	float:right;
	border-radius: 5px;

}
#annotextbox {
	width:750px;
	height:100px;
	border:double;
	float:left;
	border-radius: 5px;

}
</style>



</body>