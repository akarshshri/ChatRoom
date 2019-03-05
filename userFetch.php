<?php
include_once('config.php');
$result= mysqli_query($conn , "SELECT * FROM user");
echo "<h3><center>Users</center></h3><hr>";
while ($row = mysqli_fetch_assoc($result)){
	if($row['user_status'] == 1 ){
		echo "<font color='#009900'>&nbsp;".$row['user_name']." (Online)"."</font><br>";
		}
		else {
				echo "<font color='#FF0000'>&nbsp;".$row['user_name']." (Offline)"."</font><br>";
			}
	}

?>