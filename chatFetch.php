<?php
include_once('config.php');
$result= mysqli_query($conn , "SELECT * FROM chat");
while ($row = mysqli_fetch_assoc($result)){
	echo '<font size="4.5px"><b>'.$row['chat_person_name']."</b></font> : ";
	echo $row['chat_value']."<br>";
	
	}
?>