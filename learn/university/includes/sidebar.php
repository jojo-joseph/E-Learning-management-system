<aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.php"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                   <?php $query=mysql_query("select uname from university where uemail='".$_SESSION['login']."'");
                  while($row=mysql_fetch_array($query)) 
                  {
                   ?> 
               <h5 class="centered"><?php echo htmlentities($row['uname']);?></h5>
                  <?php } ?>
              	  	<br/>   <br/>
                  <li class="sub-menu">
                      <a href="dashboard.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="addnewcourse.php" >
                          <i class="fa fa-tasks"></i>
                          <span>Add New Course</span>
                      </a>
                      
                  </li>
                 
                  <li class="sub-menu">
                      <a href="uploadstudyvedios.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Upload Study Vedios</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="uploadstudymeterial.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Upload Study Meterials</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Account Setting</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="profile.php">Profile</a></li>
                          <li><a  href="change-password.php">Change Password</a></li>
                        
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="complaint-history.php" >
                          <i class="fa fa-tasks"></i>
                          <span>Added Course List</span>
                      </a>
                      
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>