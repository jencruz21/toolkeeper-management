<?php
include '../includes/connection.php';
include '../includes/sidebar.php';

?>

            <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 class="m-2 font-weight-bold text-primary">Transaction</h4>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
               <thead>
                   <tr>
                    <th>Transaction ID</th>
                    <th>Transaction Date</th>
                     <th>Customer</th>
                     <th>Status</th>
                     <th width="13%"># of Items</th>
                     <th width="11%">Action</th>
                   </tr>
               </thead>
          <tbody>

<?php
$query = '';

if ($_SESSION['TYPE'] === "User") {
  $id = $_SESSION['MEMBER_ID'];
  $query = "SELECT * FROM checkout_details WHERE customer_id = '$id'";
} else {
  $query = "SELECT * FROM checkout_details";
}

$result = mysqli_query($db, $query) or die(mysqli_error($db));

while ($row = mysqli_fetch_assoc($result)) {
?>
    <tr>
      <td><?= $row['checkout_id'] ?></td>
      <!-- date -->
      <td>
        <?php 
          $str = strtotime($row['checkout_date']);
          echo date("Y-m-d g:i A", $str);
        ?>
      </td>
      <td><?= $row['customer'] ?> </td>
      <td><?php echo $row['checkout_status'] === "0" ? "Pending" : "Approved" ?></td>
      <td><?= $row['total_items'] ?></td>
      <td align="right">
        <a type="button" class="btn btn-primary bg-gradient-primary" href="trans_view.php?action=edit&id=<?= $row['checkout_id'] ?>&customer_id=<?php echo $row['customer_id']?>"><i class="fas fa-fw fa-th-list"></i> View</a>
      </td>
    </tr>
<?php
  }
?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                  </div>

<?php
include '../includes/footer.php';
?>
