<?php

include('connect.php');

$sql = "SELECT * FROM jeet_products";
$response = array();
$res = mysqli_query($con, $sql);

while($data = mysqli_fetch_assoc($res))
{
    $row = array();
    $row["id"]    = $data["id"];
    $row["p_price"] = $data["p_price"];
    $row["p_des"]   = $data["p_des"];
    $row["p_name"]  = $data["p_name"];  
    $row["p_img"]  = $data["p_img"];  
    $response[] = $row;
}

echo json_encode($response);

?>




