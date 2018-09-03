<?php
include('includes/config.php');
if(!empty($_POST["catid"])) 
{
 $id=intval($_POST['catid']);
 if(!is_numeric($id)){
 
 	echo htmlentities("invalid industryid");exit;
 }
 else{
 $stmt = mysql_query("SELECT subcategory FROM subcategory WHERE categoryid ='$id'");
 ?><option selected="selected">Select Subcategory </option><?php
 while($row=mysql_fetch_array($stmt))
 {
  ?>
  <option value="<?php echo htmlentities($row['subcategory']); ?>"><?php echo htmlentities($row['subcategory']); ?></option>
  <?php
 }
}

}
?>