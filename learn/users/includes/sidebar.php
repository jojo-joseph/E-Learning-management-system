<aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.php"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                   <?php $query=mysql_query("select fullName from users where userEmail='".$_SESSION['login']."'");
                 while($row=mysql_fetch_array($query)) 
                {
                  ?> 
              	  <h5 class="centered"><?php echo htmlentities($row['fullName']);?></h5>
                  <?php } ?>
              	  	
                  <li class="mt">
                      <a href="dashboard.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="enrolledcourses.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Enrolled Courses</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="enrollnewcourse.php" >
                          <i class="fa fa-tasks"></i>
                          <span>Enroll New Course</span>
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
                      <a href="viewvedio.php" >
                          <i class="fa fa-book"></i>
                          <span>View Vedio</span>
                      </a>
                    </li>
                     <li class="sub-menu">
                      <a href="register-complaint.php" >
                          <i class="fa fa-book"></i>
                          <span>View Study Meterial</span>
                      </a>
                    </li>
                    
                  
                  <li class="sub-menu">
                      <a href="complaint-history.php" >  
                          <i class="fa fa-tasks"></i>
                          <span>About Your Course </span>
                      </a>
                     </li> 
                  </li>
                  
              </ul>
              
          </div>
      </aside>