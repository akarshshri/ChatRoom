<?php

include_once('config.php');
if(isset($_POST['name']) && isset($_POST['email']) && isset($_POST['country']) && isset($_POST['pass1'])){
    $name     = $_POST['name'];
    $email    = $_POST['email'];
    $country  = $_POST['country'];
    $password = $_POST['pass1'];


    $result = mysqli_query($conn, "INSERT INTO `chatroomnew`.`user`
                (`user_id`,
                 `user_name`,
                 `user_email`,
                 `user_password`,
                 `user_country`,
                 `user_status`)
    VALUES (NULL,
            '$name',
            '$email',
            '$password',
            '$country',
            '0');");
}else{
   header('location: index.php?registeration_failed=<span style="color:red">Registration failed, Try again</span>');
}
if ($result) {
    header('location: index.php?registeration_successfull=<span style="color:green">You have successfully registered. You can now login.</span>');
} 

?>