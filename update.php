<?php

include('connect.php');

$id    = $_POST['id'];
$name  = $_POST['p_name'];
$price = $_POST['p_price'];
$des   = $_POST['p_des'];

$Sql_Query = "UPDATE jeet_products 
              SET p_name='$name', p_price='$price', p_des='$des' 
              WHERE id='$id'";

if(mysqli_query($con, $Sql_Query)){
    echo "1";
} else {
    echo "0";
}

?>
