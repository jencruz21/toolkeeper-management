<?php
include'../includes/connection.php';
?>
<!-- Page Content -->
<div class="col-lg-12">
    <?php
              $name = $_POST['Name'];
              $plate_no = $_POST['PlateNo'];
              $date_borrowed = $_POST['date_borrowed']; 
        
              switch($_GET['action']){
                case 'add':  
                    $query = "INSERT INTO vehicle
                    (NAME, PLATE_NO, AVAILABILITY, DATE_BORROWED)
                    VALUES ('{$name}','{$plate_no}','1','{$date_borrowed}')";
                    mysqli_query($db,$query)or die ('Error in updating equipment in Database '.$query);
                break;
              }
            ?>
    <script type="text/javascript">
    window.location = "vehicle.php";
    </script>
</div>

<?php
include'../includes/footer.php';
?>