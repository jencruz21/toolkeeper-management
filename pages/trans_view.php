<?php
include '../includes/connection.php';
include '../includes/sidebar.php';
?>
<?php

$checkout_id = $_GET['id'];
$customer_id = $_GET['customer_id'];

$query = "SELECT cd.*, e.FIRST_NAME, e.LAST_NAME, v.NAME as vehicle FROM checkout_details cd JOIN employee e ON cd.employee_id = e.EMPLOYEE_ID JOIN vehicle v ON cd.vehicle_id = v.ID WHERE checkout_id = '$checkout_id'";
$result = mysqli_query($db, $query) or die(mysqli_error($db));
while ($row = mysqli_fetch_assoc($result)) {
    $date = $row['checkout_date'];
    $name = $row['FIRST_NAME'] . " " . $row['LAST_NAME'];
    $vehicle = $row['vehicle'];
    $customer_position = $row['customer_position'];
    $details = $row['details'];
    $checkout_status = $row['checkout_status'];
}
?>

          <div class="card shadow mb-4">
            <div class="card-body">
              <div class="form-group row text-left mb-0">
                <div class="col-sm-9">
                  <h5 class="font-weight-bold">
                    Transaction History
                  </h5>
                </div>
                <div class="col-sm-3 py-1">
                  <h6>
                    Date: <?php echo $date; ?>
                  </h6>
                </div>
              </div>
              <hr>
              <div class="form-group row text-left mb-0 py-2">
                <div class="col-sm-4 py-1">
                  <h6 class="font-weight-bold">
                    Name: <?php echo $name ?>
                  </h6>
                  <h6 class="font-weight-bold" <?php echo $customer_position === "Engineer" ? "style='color: red'" : "" ?> >
                    Job title: <?php echo $customer_position === "Engineer" ? $customer_position . " (MUST APPROVE!)" : $customer_position ?>
                  </h6>
                  <h6>Description: </h6>
                  <textarea readonly disabled cols="60" rows="5"><?=$details ?></textarea>
                </div>
                <div class="col-sm-4 py-1">
                <h6>
                    Vehicle: <?php echo $vehicle ?>
                  </h6>
                </div>
                <div class="col-sm-4 py-1">
                  <h6>
                    Transaction #<?php echo $_GET['id']; ?>
                  </h6>
                  <h6>
                    <a href="print_receipt.php?checkout_id=<?=$checkout_id?>" target="_blank" class="btn btn-primary">Print transaction</a>
                  </h6>
                  <?php if ((int)$checkout_status === 1) : ?>
                    <h6 style="font-weight: bold">Transaction Approved!</h6>  
                  <?php else: ?>
                    <h6>
                      <a href="approve_transaction.php?checkout_id=<?=$checkout_id?>&customer_id=<?= $customer_id?>" class="btn btn-primary">Approve Request</a>
                    </h6>
                  <?php endif; ?>
                </div>
              </div>
          <div class="row row-cols-2">
            <div class="col-6">
            <table class="table table-bordered" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>Products</th>
                <th width="15%">Status</th>
                <th width="15%">Price</th>
                <th width="30%">Approval</th>
              </tr>
            </thead>
            <tbody>
<?php
$query = "SELECT * FROM checkout_items WHERE chkout_id ='$checkout_id' GROUP BY name";
$result = mysqli_query($db, $query) or die(mysqli_error($db));
while ($row = mysqli_fetch_assoc($result)) {
    ?>
    <tr>
      <td><?=$row['name']?></td>
      <td><?=$row['status']?></td>
      <td><?=$row['price']?></td>
      <td>
        <?php
if ($row['checkout_status'] === "1"):
    ?>
      Item approved!
        <?php else: ?>
          <form action="approve_process.php" method="post">
            <input type="hidden" name="customer_id" value="<?=$customer_id?>">
            <input type="hidden" name="checkout_id" value="<?=$checkout_id?>">
            <input type="hidden" name="name" value="<?=$row['name']?>">
            <input type="hidden" name="unit" value="<?=$row['unit']?>">
            <input type="hidden" name="type" value="<?=$row['type']?>">
            <input type="hidden" name="price" value="<?=$row['price']?>">
            <input type="hidden" name="status" value="<?=$row['status']?>">
            <input type="hidden" name="item_id" value="<?= $row['item_id'] ?>">
            <button type="submit" name="approve" class="btn btn-success"><i class="fas fa-regular fa-check"></i></button>
            <a class="btn btn-danger" href="delete_checkout_item.php?id=<?= $checkout_id ?>&customer_id=<?= $customer_id?>&item_id=<?=$row['item_id']?>"><i style="color: white" class="fas fa-times"></i></a>
            <input type="text" name="amount" size="6" maxlength="6" required>
        </form>
        <?php endif;?>
      </td>
    </tr>
<?php
}
?>


                  </table>
            </div>
            <div class="col-6">
            <table class="table table-bordered" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>Products</th>
                <th width="20%">QTY</th>
                <th width="20%">TYPE</th>
                <th width="20%">UNIT</th>
              </tr>
            </thead>
            <tbody>
<?php
$query = "SELECT SUM(qty), name, type, unit FROM `checkout_items` WHERE chkout_id = '$checkout_id' GROUP BY name";
$result = mysqli_query($db, $query) or die(mysqli_error($db));
while ($row = mysqli_fetch_assoc($result)) {
    ?>
  <tr>
    <td><?=$row['name']?></td>
    <td><?=$row['SUM(qty)']?></td>
    <td><?=$row['type']?></td>
    <td><?=$row['unit']?></td>
  </tr>
<?php
}
?>
                  </table>
            </div>
          </div>
                </div>
                <div class="col-sm-1 py-1"></div>
              </div>
            </div>
          </div>


<?php
include '../includes/footer.php';
?>
