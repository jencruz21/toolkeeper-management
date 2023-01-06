<?php
include '../includes/connection.php';
include '../includes/sidebar.php';
?>
<?php

$customer_id = $_SESSION['MEMBER_ID'];
?>

<div class="card shadow mb-4">
    <div class="card-body">
        <div class="card-title">
            <h3>Approved Items</h3>
        </div>
        <div class="row">
            <div class="col">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Products</th>
                            <th width="10%">Status</th>
                            <th width="10%">Price</th>
                            <th width="10%">Amount approved</th>
                            <th width="10%">Approval</th>
                            <th width="10%">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
$query = "SELECT * FROM approved_items WHERE customer_id ='$customer_id' GROUP BY name";
$result = mysqli_query($db, $query) or die(mysqli_error($db));
while ($row = mysqli_fetch_assoc($result)) {
    ?>
                        <tr>
                            <td><?=$row['name']?></td>
                            <td><?=$row['status']?></td>
                            <td><?=$row['price']?></td>
                            <td><?=$row['qty']?></td>
                            <td>
                                <h6 style="color: green; font-weight:bold">Approved</h6>
                            </td>
                            <td>
                                <form action="return.php" method="post">
                                    <input type="hidden" name="customer_id" value="<?=$customer_id?>">
                                    <input type="hidden" name="checkout_id" value="<?=$row['checkout_id']?>">
                                    <input type="hidden" name="name" value="<?=$row['name']?>">
                                    <input type="hidden" name="unit" value="<?=$row['unit']?>">
                                    <input type="hidden" name="type" value="<?=$row['type']?>">
                                    <input type="hidden" name="price" value="<?=$row['price']?>">
                                    <input type="hidden" name="status" value="<?=$row['status']?>">
                                    <input type="hidden" name="qty" value="<?=$row['qty']?>">
                                    <input type="hidden" name="item_id" value="<?= $row['item_id']?>">
                                    <button class="btn btn-primary" name="return"><i
                                            class="fas fa-fw fa-arrow-left"></i> Return</button>
                                </form>
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