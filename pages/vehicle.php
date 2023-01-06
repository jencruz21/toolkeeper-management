<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
  // $query = 'SELECT ID, t.TYPE
  //           FROM users u
  //           JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].'';
  // $result = mysqli_query($db, $query) or die (mysqli_error($db));
  
  // while ($row = mysqli_fetch_assoc($result)) {
  //           $Aa = $row['TYPE'];
                   
  // if ($Aa=='User'){
?>
  <!-- <script type="text/javascript">
    //then it will be redirected
    alert("Restricted Page! You will be redirected to POS");
    window.location = "pos.php";
  </script> -->
<?php
//   }           
// }

$sql = "SELECT TYPE FROM equipment";
$result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");

$aaa = "<select class='form-control' name='equipment category' required>
        <option disabled selected hidden>Select Category</option>";
  while ($row = mysqli_fetch_assoc($result)) {
    $aaa .= "<option value='".$row['TYPE']."'>".$row['TYPE']."</option>";
  }

$aaa .= "</select>";


?>
            
            <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 class="m-2 font-weight-bold text-primary">Vehicle&nbsp;<a  href="#" data-toggle="modal" data-target="#aModal" 
              type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 0px;"><i class="fas fa-fw fa-plus"></i></a></h4>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                   <th>Vehicle Id</th>
                     <th>Name</th>
                     <th>Plate Number</th>
                     <th>Availability</th>
                     <th>Date Purchased</th>
                     <th>Action</th>
                   </tr>
               </thead>
          <tbody>

<?php                  
    $query = 'SELECT * FROM vehicle';
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
            while ($row = mysqli_fetch_assoc($result)) {
                                 
                echo '<tr>';
                echo '<td>'. $row['ID'].'</td>';
                echo '<td>'. $row['NAME'].'</td>';
                echo '<td>'. $row['PLATE_NO'].'</td>';
                echo '<td>'. $row['AVAILABILITY'].'</td>';
                echo '<td>'. $row['DATE_BORROWED'].'</td>';
                      echo '<td align="right"> <div class="btn-group">
                              <a type="button" class="btn btn-primary bg-gradient-primary" href="vehicle_searchfrm.php?action=edit & id='
                              .$row['ID'] . '"><i class="fas fa-fw fa-list-alt"></i> Details</a>
                            <div class="btn-group">
                              <a type="button" class="btn btn-primary bg-gradient-primary dropdown no-arrow" data-toggle="dropdown" style="color:white;">
                              <span class="caret"></span><i class="fas fa-fw fa-edit"></i></a>
                            <ul class="dropdown-menu text-center" role="menu">
                                <li>
                                  <a type="button" class="btn btn-warning bg-gradient-warning btn-block" style="border-radius: 0px;" 
                                  href="vehicle_edit.php?action=edit & id='.$row['ID']. '">
                                    <i class="fas fa-fw fa-edit"></i> Edit
                                  </a>
                                </li>
                            </ul>
                            <a type="button" class="btn btn-primary bg-gradient-primary"
                                    href="delete_vehicle.php?id=' . $row['ID'] . '">
                                    <i class="fas fa-fw fa-trash"></i> Delete</a>
                            </div>
                          </div> </td>';
                echo '</tr> ';
                        }
?> 
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                  </div>

<?php
include'../includes/footer.php';
?>

  <div class="modal fade" id="aModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Vehicle</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" action="vehicle_transac.php?action=add">
           <div class="form-group">
             <input class="form-control" placeholder="Vehicle Name" name="Name" required>
           </div>
           <div class="form-group">
             <input class="form-control" placeholder="Plate Number" name="PlateNo" required>
           </div>
           <div class="form-group">
             <input type="text" onfocus="(this.type='date')" onblur="(this.type='text')" class="form-control" 
             placeholder="Date Borrowed" name="date_borrowed" required>
           </div>
            <hr>
            <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
          </form>  
        </div>
      </div>
    </div>
  </div>