<?php

    include('connect.php');

    $name   = $_POST['name'];
    $mobile = $_POST['mobile'];
    $email  = $_POST['email'];
    $pass   = $_POST['password'];

    if($name=="" || $mobile=="" || $email=="" || $pass=="")
    {
        echo '0';
    }
    else
    {
        $sql = "INSERT INTO jeet_user(name, mobile, email, password) 
                VALUES ('$name', '$mobile', '$email', '$pass')";
                
        mysqli_query($con, $sql);
        echo '1';
    }

?>
