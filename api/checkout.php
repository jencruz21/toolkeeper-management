<?php
include "../includes/connection.php";

if (isset($_POST['user']) && isset($_POST['user_position'])) {
    date_default_timezone_set('Asia/Manila');

    $totalCost = mysqli_real_escape_string($db, $_POST['total_cost']);
    $numOfItems = mysqli_real_escape_string($db, $_POST['total_item_count']);
    $amountPaid = mysqli_real_escape_string($db, $_POST['amount_paid']);
    $detail = mysqli_real_escape_string($db, $_POST['detail']);
    $vehicle = mysqli_real_escape_string($db, $_POST['vehicle']);
    $user = mysqli_real_escape_string($db, $_POST['user']);
    $user_id = mysqli_real_escape_string($db, $_POST['user_id']);
    $userPosition = mysqli_real_escape_string($db, $_POST['user_position']);
    $checkOutId = mysqli_real_escape_string($db, $_POST['checkout_id']);
    $date = date("Y-m-d H:i:s");

    echo $totalCost . " " . $amountPaid . " " . $detail . " " . $vehicle . " " . $numOfItems . " " . $user . " " . $userPosition . " " . $checkOutId;

    mysqli_query($db, "INSERT INTO checkout_details (details, total_items, total_cost, amount_paid, vehicle, customer, customer_id, customer_position, checkout_date, checkout_id) 
                        VALUES ('$detail', '$numOfItems', '$totalCost', '$amountPaid', '$vehicle', '$user', '$user_id', '$userPosition', '$date', '$checkOutId')");
    mysqli_close($db);
    exit();
}
