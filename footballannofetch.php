<?php
include_once('config.php');
$result= mysqli_query($conn , "SELECT * FROM anno_football");
echo '<center><h3 >Announcement</h3></center><hr>';
while ($row = mysqli_fetch_assoc($result)){
	//echo '<font size="4.5px"><b>'.$row['name']."</b></font> : ";
	echo "<li>".$row['anno']."<br>";
	
	}
?>