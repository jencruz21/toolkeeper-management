<?php
include '../includes/connection.php';
include '../includes/sidebar.php';
include '../includes/helper.php'
?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-2 font-weight-bold text-primary">Returned Equipment</h4>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Equipment</th>
                            <th width="10%">Status</th>
                            <th width="10%">Price</th>
                            <th width="10%">Amount Returned</th>
                            <th width="10%">Returned Status</th>
                            <th width="10%">Date returned</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
$query = "SELECT * FROM returned_items";
$result = mysqli_query($db, $query) or die(mysqli_error($db));
while ($row = mysqli_fetch_assoc($result)) {
    ?>
                        <tr>
                            <td><?=$row['name']?></td>
                            <td><?php echo checkStatus($row['status']); ?></td>
                            <td><?=$row['price']?></td>
                            <td><?=$row['qty']?></td>
                            <td>
                                <?php if ($row['return_status'] === "0") : ?>
                                    <h6 style="font-weight:bold">Returning to warehouse</h6>
                                <?php else : ?>
                                    <h6 style="color: green; font-weight:bold">Item returned</h6>
                                <?php endif; ?>
                            </td>
                            <td>
                                <?php $str = strtotime($row['date_returned']);
                                    echo date('Y-m-d g:i A', $str);
                                ?>
                            </td>
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