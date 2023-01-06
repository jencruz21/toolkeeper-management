<?php // copy paste nlng naten ung sa approved items hahahaha?>

<?php
include '../includes/connection.php';
include '../includes/sidebar.php';
?>

<div class="card shadow mb-4">
    <div class="card-body">
        <div class="card-title">
            <h3>Returned Equipment</h3>
        </div>
        <div class="row">
            <div class="col">
                <table class="table table-bordered" width="100%" cellspacing="0">
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
                            <td><?=$row['status']?></td>
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