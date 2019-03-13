<?php
session_start();
include_once('config.php');
if(isset($_POST['anno']))
{
	
		$result = mysqli_query($conn , "INSERT INTO `chatroomnew`.`anno_football`
	            (`id`,
	             `name`,
	             `anno`
				 )
		VALUES (NULL,
	        '$_SESSION[name]',
			'$_POST[anno]'
			
			);");
	
	}

?> 