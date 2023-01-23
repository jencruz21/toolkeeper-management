<?php

include "../includes/connection.php";

if (isset($_POST['approve'])) {
    date_default_timezone_set('Asia/Manila');

    $checkout_id = mysqli_real_escape_string($db, $_POST['checkout_id']);
    $customer_id = mysqli_real_escape_string($db, $_POST['customer_id']);
    $name = mysqli_real_escape_string($db, $_POST['name']);
    $amount = mysqli_real_escape_string($db, $_POST['amount']);
    $unit = mysqli_real_escape_string($db, $_POST['unit']);
    $type = mysqli_real_escape_string($db, $_POST['type']);
    $price = mysqli_real_escape_string($db, $_POST['price']);
    $status = mysqli_real_escape_string($db, $_POST['status']);
    $item_id = mysqli_real_escape_string($db, $_POST['item_id']);
    $date = date('Y-m-d H:i:s');

    /**
     * 1. insert record to approved items
     * 2. subtract the item qty from the entered amount
     * 3. set the status to approved!
     */

    $query1 = "INSERT INTO approved_items (name, qty, unit, type, price, status, checkout_id, customer_id, date_approved, item_id)
        VALUES ('$name', '$amount', '$unit' ,'$type', '$price', '$status', '$checkout_id', '$customer_id', '$date', '$item_id')";
        mysqli_query($db, $query1);

    $query2 = "UPDATE equipment SET QTY_STOCK = QTY_STOCK - '$amount' WHERE NAME = '$name'";
    mysqli_query($db, $query2);

    $query3 = "UPDATE checkout_items SET checkout_status = '1' WHERE item_id = '$item_id' AND chkout_id = '$checkout_id'";
    mysqli_query($db, $query3);

    header("location: trans_view.php?action=edit&id=$checkout_id&customer_id=$customer_id");
}
