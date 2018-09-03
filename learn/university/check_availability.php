<?php 
require_once("includes/config.php");
if(!empty($_POST["uemail"])) {
	$uemail= $_POST["uemail"];
	
		$result =mysql_query("SELECT uemail FROM university WHERE uemail='$uemail'");
		$count=mysql_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Email already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Email available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
