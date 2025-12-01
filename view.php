<?php

include('connect.php');

$sql = "SELECT * FROM jeet_products";
$response = array();
$res = mysqli_query($con, $sql);

while($data = mysqli_fetch_assoc($res))
{
    $row = array();
    $row["id"]    = $data["id"];
    $row["price"] = $data["p_price"];
    $row["des"]   = $data["p_des"];
    $row["name"]  = $data["p_name"];  
    <?php

include('connect.php');

$sql = "SELECT * FROM jeet_products";
$response = array();
$res = mysqli_query($con, $sql);

while($data = mysqli_fetch_assoc($res))
{
    $row = array();
    $row["id"]    = $data["id"];
    $row["price"] = $data["p_price"];
    $row["des"]   = $data["p_des"];
    $row["name"]  = $data["p_name"];  
    $row["img"]  = $data["p_img"];  
    $response[] = $row;
}

echo json_encode($response);

?>

    $response[] = $row;
}

echo json_encode($response);

?>

