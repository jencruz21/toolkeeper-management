<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
            ?>
<center>
    <div class="card shadow mb-4 col-xs-12 col-md-8 border-bottom-primary">
        <div class="card-header py-3">
            <h4 class="m-2 font-weight-bold text-primary">Vehicle Details</h4>
        </div>
        <a href="equipment.php?action=add" type="button" class="btn btn-primary bg-gradient-primary btn-block">
            <i class="fas fa-flip-horizontal fa-fw fa-share"></i> Back</a>
        <div class="card-body">
            <?php 
            $query = 'SELECT * FROM vehicle';
            $result = mysqli_query($db, $query) or die(mysqli_error($db));
              while($row = mysqli_fetch_array($result))
              {   
                $id = $row['ID'];
                $name= $row['NAME'];
                $plate_no= $row['PLATE_NO'];
                $availability= $row['AVAILABILITY'];
              }
              $id = $_GET['id'];
          ?>

            <div class="form-group row text-left">
                <div class="col-sm-3 text-primary">
                    <h5>
                        Vehicle ID<br>
                    </h5>
                </div>
                <div class="col-sm-9">
                    <h5>
                        : <?php echo $id; ?><br>
                    </h5>
                </div>
            </div>
            <div class="form-group row text-left">
                <div class="col-sm-3 text-primary">
                    <h5>
                        Vehicle Name<br>
                    </h5>
                </div>
                <div class="col-sm-9">
                    <h5>
                        : <?php echo $name; ?> <br>
                    </h5>
                </div>
            </div>
            <div class="form-group row text-left">
                <div class="col-sm-3 text-primary">
                    <h5>
                        Plate no: <br>
                    </h5>
                </div>
                <div class="col-sm-9">
                    <h5>
                        : <?php echo $plate_no; ?><br>
                    </h5>
                </div>
            </div>
            <div class="form-group row text-left">
                <div class="col-sm-3 text-primary">
                    <h5>
                        Availability<br>
                    </h5>
                </div>
                <div class="col-sm-9">
                    <h5 style="color:green; font-weight: bold">
                        : <?php echo $availability === "1" ? "Available" : "Not available" ; ?><br>
                    </h5>
                </div>
            </div>
        </div>
    </div>
</center>


<?php
include'../includes/footer.php';
?>