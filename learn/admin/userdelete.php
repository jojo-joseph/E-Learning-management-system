
<?php
	
	include("./include/config.php");
	$qu=mysql_query("delete from users where id=".$_GET['pid']); 
    $row=mysql_fetch_array($qu);
	
    header('location:./manage-users.php');
	

?>