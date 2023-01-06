<?php
include "../includes/connection.php";

date_default_timezone_set('Asia/Manila');

$name = mysqli_real_escape_string($db, $_POST['name']);
$qty = mysqli_real_escape_string($db, $_POST['qty']);
$unit = mysqli_real_escape_string($db, $_POST['unit']);
$type = mysqli_real_escape_string($db, $_POST['type']);
$price = mysqli_real_escape_string($db, $_POST['price']);
$status = mysqli_real_escape_string($db, $_POST['status']);
$chkout_id = mysqli_real_escape_string($db, $_POST['chkout_id']);
$item_id = mysqli_real_escape_string($db, $_POST['item_id']);
$date = date("Y-m-d H:i:s");

echo $name . " " . $qty . " " . $unit . " " . $price . " " . $type . " " . $status . " " . $chkout_id;

mysqli_query($db, "INSERT INTO checkout_items (name, qty, unit, type, price, status, chkout_id, date_purchased, item_id)
                       VALUES ('$name', '$qty', '$unit', '$type', '$price', '$status', '$chkout_id', '$date', '$item_id')");
mysqli_close($db);
exit();