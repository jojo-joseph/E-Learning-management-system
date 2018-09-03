
<?php
	
	include("./include/config.php");
	$qu=mysql_query("delete from university where uid=".$_GET['pid']); 
    $row=mysql_fetch_array($qu);
	
    header('location:./viewuniversity.php');
	

?>