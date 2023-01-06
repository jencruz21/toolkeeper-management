<?php
include('../includes/connection.php');
			$zz = $_POST['EQUIPMENT_ID'];
			$pc = $_POST['EQUIPMENT_ID'];
			$pname = $_POST['EQNAME'];
            $desc = $_POST['EQDESCRIPTION'];
            $pr = $_POST['EQQTY'];
            $cat = $_POST['TYPE'];
		
	 			$query = 'UPDATE equipment set NAME="'.$pname.'",
					DESCRIPTION="'.$desc.'", QTY_STOCK="'.$pr.'", TYPE ="'.$cat.'" WHERE
					EQUIPMENT_ID ="'.$pc.'"';
					$result = mysqli_query($db, $query) or die(mysqli_error($db));

							
?>	
	<script type="text/javascript">
			alert("You've Update Product Successfully.");
			window.location = "equipment.php";
		</script>