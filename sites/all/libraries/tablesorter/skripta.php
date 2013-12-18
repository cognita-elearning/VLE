<?php
if(isset($_POST['reportName']) && !empty($_POST['reportName'])){
	$reportName=$_POST['reportName'];
}else{
	$reportName="report";
}
header('Content-Type: application/csv');
header('Content-Disposition: attachment; filename="'.$reportName.'.csv"');
$csv = $_POST['tekstPolje'];
print $csv;
?>