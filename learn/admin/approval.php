<?php
	
	include("./include/config.php");
	$qu=mysql_query("select * from university where uid=".$_GET['id']); 
    $row=mysql_fetch_array($qu);

    echo $row['apstatus'];

    if ($row['apstatus'] != 'approved') {
		$abc=mysql_query("update university set apstatus='approved' where uid=".$_GET['id']);
		header('location:./manageuniversityaccount.php');
	}
	else{

	}

?>