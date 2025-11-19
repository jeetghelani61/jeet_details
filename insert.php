<?php

include('connect.php');

$name  = $_POST['p_name'] ?? '';
$price = $_POST['p_price'] ?? '';
$des   = $_POST['p_des'] ?? '';

// Check if any field is empty
if($name == "" || $price == "" || $des == "")
{
    echo json_encode(['code' => 400, 'message' => 'All fields are required']);
    exit;
}

// Insert data
$sql = "INSERT INTO jeet_products (p_name, p_price, p_des) 
        VALUES ('$name', '$price', '$des')";

if(mysqli_query($con, $sql))
{
    echo json_encode(['code' => 200, 'message' => 'Product inserted successfully']);
}
else
{
    echo json_encode(['code' => 500, 'message' => 'Database error', 'error' => mysqli_error($con)]);
}

?>
