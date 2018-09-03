<?php
include("includes/config.php");
echo $id=$_GET['id'];
$a=mysql_query("delete from addnewcourse where coid='$id'")or die(mysql_error());
if($a)
echo"delete";
header('location:complaint-history.php');
?>
