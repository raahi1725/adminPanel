<!DOCTYPE html>
<html>
<body>
	<div class="sidebar" data-color="purple" data-background-color="white" data-image="./resources/img/sidebar-1.jpg">
      <div class="logo">
     	 <a href="#" class="simple-text logo-normal">
         	<img src="./resources/img/logo.png" class="logo"></img>
         </a>
      </div>
      <div class="sidebar-wrapper">
        <ul  class="nav">
           <li id="home" class="nav-item">
            <a class="nav-link" href="dashboard">
              <i class="material-icons"><i class="fa fa-home"></i></i>
              <span>Home</span>
            </a>
          </li>
          <li id="packages" class="nav-item active">
            <a class="nav-link" href="packages">
              <i class="material-icons"><i class="fa fa-plane"></i></i>
              <span>Packages</span>
            </a>
          </li>
          <li id="customers" class="nav-item">
            <a class="nav-link" href="customers">
            	<i class="material-icons"><i class="fa fa-user"></i></i>
            	<span>Customers</span>
            </a>
          </li>
          <li id="tourReports" class="nav-item ">
            <a class="nav-link" href="./typography.jsp">
              <i class="material-icons"><i class="fa fa-line-chart"></i></i>
              <span>Tour Reports</span>
            </a>
          </li>
          <li id="iESheet" class="nav-item ">
            <a class="nav-link" href="./icons.jsp">
              <i class="material-icons"><i class="fa fa-bar-chart"></i></i>
              <span>Income/Expense Sheet</span>
            </a>
          </li>
          <li id="staff" class="nav-item ">
            <a class="nav-link" href="./map.jsp">
             <i class="material-icons"><i class="fa fa-group"></i></i>
              <span>Staff</span>
            </a>
          </li>
          <li id="notifications" class="nav-item ">
            <a class="nav-link" href="./notifications.jsp">
              <i class="material-icons"><i class="fa fa-bell"></i></i>
              <span>Notifications</span>
            </a>
          </li>
          <li id="language" class="nav-item ">
            <a class="nav-link" href="./rtl.jsp">
              <i class="material-icons"><i class="fa fa-globe"></i></i>
              <span>Language</span>
            </a>
          </li>
          <li id="pro" class="nav-item active-pro ">
            <a class="nav-link" href="./upgrade.jsp">
              <i class="material-icons"><i class="fa fa-rocket"></i></i>
              <span>Upgrade to PRO</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
      <nav class="navbar navbar-expand-lg navbar-transparent ">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <span class="d-lg-none d-md-block">
                    Stats
                  </span>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <span class="d-lg-none d-md-block">
                    Some Actions
                  </span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Mike John responded to your email</a>
                  <a class="dropdown-item" href="#">You have 5 new tasks</a>
                  <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="#">Another Notification</a>
                  <a class="dropdown-item" href="#">Another One</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <span class="d-lg-none d-md-block">
                    Account
                  </span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="/logout">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
</body>
</html>
</html>
