<?php
session_start();
 ?>
<script>
	
function getText() {
	var $a =	document.getElementById('text').value;
	var a =	document.getElementById('text').value;
	if(a !== ''){
		
			
			xhr = new XMLHttpRequest();
			xhr.open('POST' , 'chatdb.php',true);
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
			xhr.open('POST' , 'anno_tech.php',true);
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
	xhr.open('POST' , 'chatFetch.php' , true);
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
	xhr2.open('POST' , 'techannoFetch.php' , true);
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

			echo '<center><img src="images/technology.png" height="50px"></center><hr>';
				//	echo		$_SESSION['email'];
				//	echo	$_SESSION['password'];
				$name = $_SESSION['name'];
				$arr = explode(' ',trim($name));
				
			echo	'<p styple="padding-left:10px">Hello, '. $arr[0].'</p>'.'';
					
					
					
						
if (isset($_GET['logout'])){
	$result = mysqli_query($conn, "UPDATE user
SET user_status = '0'
WHERE user_email = '$_SESSION[email]';");
session_destroy();
header('location: index.php?logout_successfully=<span style="color:green">You have successfully Logged Out.</span>');
	
	}

?>
<html>
<head>
	<title>Technology - Chat Room</title>
	<style>
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
	</style>
</head>
<body bgcolor="#f1f7fc">
<form action="">
<button type="submit" name="logout" class="button1"  value="logout" style="margin-top: -1%">Logout</button>
</form>

<div id="chatbox" >
<br>
<div id ="chatarea" >
<br>
</div>
</div>
<div id="anno">
	<div style="position: absolute; margin-top: 450px">
		

	</div>
</div>
<div style="position: relative; margin-left: 82%" >
		<textarea id="ac"></textarea>
		<input type="button" value="send"  onclick="getAnno(); setTimeout(clearText, 2000)" />
</div>
<div id="loginperson">
</div>

<div id="textbox" ">
<form>
<textarea rows="4" cols="100" id="text" style="overflow:auto;resize:none;padding-left:5px" id = "textarea1" onfocus="this.value=''"></textarea>
<input type="button" value="send"  onclick="getText(); setTimeout(clearText, 2000)" />

</form>
</div>

</div>

<style>
#chatbox
{		
			border:single;
			height:500px;
			width:1000px;
			align:center;
			border-radius: 5px;
			padding-left: 2px;
			margin: auto;
			margin-left: 10%;
			}
			#chatarea {
				width:747px;
				height:400px;
				border:double;
				float:left;
				overflow:auto;
				border-radius: 5px;
				position: relative;

				}
				#loginperson {
					width:238px;
					height:500px;
					border:double;
					float:right;
					border-radius: 5px;
					margin: auto;
					position: static;
					margin-top: -35%;
					margin-right: 340px;
					}
					
					#textbox {
						width:750px;
						height:92px;
						border:double;
						float:left;
						border-radius: 5px;
						margin: auto;
						margin-left: 10%;
						margin-top: -4%;

						}
						#chatting {
							border-radius: 5px;
							padding-left: 2px;
							float:left;
							}
							#anno {
								width:238px;
								height:420px;
								border:double;
								float:right;
								border-radius: 5px;
								margin: auto;
								margin-top: -32%;
								margin-right: 5%;
								}
</style>
<?php
	if(!isset($_SESSION['email']) && !isset($_SESSION['password'])){
		//session_destroy();
		header('location: index.php');
		}

 ?>
 <script type="text/javascript">
	$("#chatarea").scrollTop($("#chatarea")[0].scrollHeight);
</script>
 </body>
 </html>
