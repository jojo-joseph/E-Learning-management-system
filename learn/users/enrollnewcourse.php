<?php
session_start();
error_reporting(0);
function err()
{
  ?><script> alert('The Course is Already Enrolled');
location.assign("enrollnewcourse.php")
  </script><?php
} 
include('includes/config.php');


if(strlen($_SESSION['login'])==0)
  {
header('location:index.php');
$useri=$_SESSION['login'];
}
else{
if(isset($_POST['submit']))
{
$eid=$_SESSION['eid'];
$fullname=$_POST['fullName'];
$userEmail=$_POST['userEmail'];
$enrollcoursename=$_POST['enrollcoursename'];

$status="pending";

$query=mysql_query("insert into enrollnewcourse(fullname,userEmail,enrollcoursename,status) values('$fullname','$userEmail','$enrollcoursename','$status')")  or die(err());
echo '<script> alert("Your course has been successfully enrolled")</script>';
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>E-Learn | User Enroll New Course</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <script>
function getCat(val) {
  //alert(val);



  $.ajax({
  type: "POST",
  url: "getsubcat.php",
  data:'coid='+val,
  success: function(data){
    $("#uname").html(data);

  }
  });
  }
  </script>

  </head>

  <body>

  <section id="container" >
     <?php include("includes/header.php");?>
      <?php include("includes/sidebar.php");?>
      <section id="main-content">
          <section class="wrapper">
    	<h3><i class="fa fa-angle-right"></i> Enroll New Course</h3>

          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">


                      <?php if($successmsg)
                      {?>
                      <div class="alert alert-success alert-dismissable">
                       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <b>Well done!</b> <?php echo htmlentities($successmsg);?></div>
                      <?php }?>

   <?php if($errormsg)
                      {?>
                      <div class="alert alert-danger alert-dismissable">
 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <b>Oh snap!</b> </b> <?php echo htmlentities($errormsg);?></div>
                      <?php }?>

                      <form class="form-horizontal style-form" method="post" name="complaint" enctype="multipart/form-data" >


<div>
<?php
$users=$_SESSION['login'];
 $sqli=mysql_query("select * from users where userEmail='$users'");
while ($rwi=mysql_fetch_array($sqli)) {  
  $fname=$rwi[1];
}
?>

  <div> <label>Full Name</label><input type="text" name="fullName" class="form-control" value="<?php echo $fname; ?>">
</div>
<div><label>Email</label><input type="text" name="userEmail" class="form-control" value="<?php echo $_SESSION['login']; ?>">
</div>
<?php
 $a=$_POST['enrollcoursename'];
 $sqli=mysql_query("select * from addnewcourse where coursename='$a'");
while ($rwi=mysql_fetch_array($sqli)) {  
  $fname=$rwi['courseid'];
}
 ?>

<div>
<label class="col-sm-2 col-sm-2 control-label">Select Course</label>
<select name="enrollcoursename" required="required" class="form-control">
<option value="">Select Course</option>
<?php $sql=mysql_query("select * from addnewcourse");
while ($rw=mysql_fetch_array($sql)) {                   
  ?>
  <option value="<?php echo htmlentities($rw['coursename']);?>"><?php echo htmlentities($rw['coursename']);?></option>
<?php  
}
?> 
</select>
  <br>
<div>
   <div class="col-sm-10" style="padding-left:50% ">
<button type="submit" name="submit" class="btn btn-primary">Submit</button>
</div>
</div>
</div>

                          </form>
                          </div>
                          </div>
                          </div>



		</section>
      </section>
    <?php include("includes/footer.php");?>
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>

	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>

	<!--custom checkbox & radio-->

	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>

	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>


	<script src="assets/js/form-component.js"></script>


  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
<?php } ?>
