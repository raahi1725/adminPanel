<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./resources/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./resources/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Packages</title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link href="./resources/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <link href="./resources/demo/demo.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="./resources/img/sidebar-1.jpg">
      <div class="logo">
     	 <a href="#" class="simple-text logo-normal">
         	RAAHI
         </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
           <li class="nav-item">
            <a class="nav-link" href="./dashboard.jsp">
              <i class="material-icons">home</i>
              <span>Home</span>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="./packages.jsp">
              <i class="material-icons">flight_takeoff</i>
              <span>Packages</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./tables.jsp">
              <i class="material-icons">person_add</i>
              <span>Customers</span>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./typography.jsp">
              <i class="material-icons">library_books</i>
              <span>Tour Reports</span>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./icons.jsp">
              <i class="material-icons">assessment</i>
              <span>Income/Expense Sheet</span>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./map.jsp">
              <i class="material-icons">person_pin</i>
              <span>Staff</span>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./notifications.jsp">
              <i class="material-icons">notifications</i>
              <span>Notifications</span>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./rtl.jsp">
              <i class="material-icons">language</i>
              <span>Language</span>
            </a>
          </li>
          <li class="nav-item active-pro ">
            <a class="nav-link" href="./upgrade.jsp">
              <i class="material-icons">unarchive</i>
              <span>Upgrade to PRO</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Start Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">Packages</a>
          </div>
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
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
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
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Packages</h4>
                  <p class="card-category">Start a new Journey</p>
                </div>
                <div class="card-body">
                	<form>
                		<table>
                			<tr>
                				<td><label>Package Name : </label></td>
                				<td><input type="text" class="boxInput"></td>
                				<td style="width:10%;">&nbsp;</td>
                				<td><input type="number" class="boxInput" style="width:70px;">&nbsp;&nbsp;<label>Days</label></td>
                				<td><input type="number" class="boxInput" style="width:70px;">&nbsp;&nbsp;<label>Nights</label></td>
                			</tr>
                			<tr><td style="line-height: 0.8;">&nbsp;</td></tr>
                			<tr>
                				<td><label>Package Amount : </label></td>
                				<td>
                					<input type="text" class="boxInput" style="width:100px;">
                          			<label>/</label>
                          			<select class="boxInput" style="width:100px;">
                          				<option>Person</option>
                          				<option>Group</option>
                          				<option>Couple</option>
                          			</select>
                				</td>
                				<td style="width:10%;">&nbsp;</td>
                				<td colspan="2"><input type="text" placeholder="Criteria" class="form-control"></td>
                			</tr>
                			<tr><td style="line-height: 0.8;">&nbsp;</td></tr>
                			<tr>
                				<td><label>From Date : </label></td>
                          		<td><input type="date" class="boxInput"></td>
                          		<td style="width:10%;">&nbsp;</td>
                          		<td><label>To  Date : </label></td>
                          		<td><input type="date" class="boxInput"></td>
                			</tr>
                			<tr>
                				<td><label>From : </label></td>
                				<td style="white-space: nowrap;"><input type="text" class="boxInput">
                          		&nbsp;&nbsp;<span class='plusButton'> <i class="material-icons">add</i> </span></td>
                          		<td style="width:10%;">&nbsp;</td>
                          		<td><label>To : </label></td>
                          		<td style="white-space: nowrap;"><input type="text" class="boxInput">
                          		&nbsp;&nbsp;<span class='plusButton'> <i class="material-icons">add</i></span></td>
                          	</tr>
                          	<tr><td style="line-height: 0.8;">&nbsp;</td></tr>
                          	<tr>
                          		<td><label>Things To Carry</label></td>
                				<td colspan="100%" style="white-space: nowrap;"><input type="text" class="boxInput" placeholder="Comma Seperated Values"></td>
                          	</tr>
                		</table>
                        <figure class="tabBlock">
							<ul class="tabBlock-tabs">
							  <li class="tabBlock-tab is-active">PickUp</li>
							  <li class="tabBlock-tab">Travel</li>
							  <li class="tabBlock-tab">Hotel</li>
							  <li class="tabBlock-tab">Food</li>
							  <li class="tabBlock-tab">Sights/Activities</li>
							  <li class="tabBlock-tab">Drop</li>
							  <li class="tabBlock-tab">Other Benefits</li>
							</ul>
							<div class="tabBlock-content">
							  <div class="tabBlock-pane">
							  	<table class="tabTable" style="width: 100%;">
							  		<tr>
							  			<td><span class='plusButton'> <i class="material-icons">add</i></span></td>
							  			<td>
							  				<label class="bmd-label-floating">Mode</label>
							  				<select class="form-control">
							  					<option value="Bus">Bus</option>
							  					<option value="Flight">Flight</option>
							  					<option value="Train">Train</option>
							  					<option value="Private Vehical">Private Vehical</option>
							  				</select>
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Date</label>
							  				<input type="date" class="form-control">
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Time</label>
							  				<input type="time" class="form-control">
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Place</label>
							  				<input type="text" class="form-control">
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Price</label>
							  				<input type="number" class="form-control">
							  			</td>
							  			<td> 
							  				<label class="bmd-label-floating">Per</label>
							  				<select class="form-control" style="width:100px;">
		                          				<option>Person</option>
		                          				<option>Group</option>
		                          				<option>Couple</option>
                          					</select>
							  			</td>
							  		</tr>
							  	</table>
							  </div>
							  <div class="tabBlock-pane">
							  	<table class="tabTable" border="1" style="width: 100%;">
							  		<tr>
							  			<td><span class='plusButton'> <i class="material-icons">add</i></span></td>
							  			<td>
							  				<label class="bmd-label-floating">Mode</label>
							  				<select class="form-control">
							  					<option value="Bus">Bus</option>
							  					<option value="Flight">Flight</option>
							  					<option value="Train">Train</option>
							  					<option value="Private Vehical">Private Vehical</option>
							  				</select>
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Date</label>
							  				<input type="date" class="form-control">
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Time</label>
							  				<input type="time" class="form-control">
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Price</label>
							  				<input type="number" class="form-control"> 
							  				<select class="form-control" style="width:100px;">
		                          				<option>/Person</option>
		                          				<option>/Group</option>
		                          				<option>/Couple</option>
                          					</select>
							  			</td>
							  		</tr>
							  	</table>
							  	</div>
							    <div class="tabBlock-pane">
								    <table class="tabTable" border="1" style="width: 100%;">
								  		<tr>
								  			<td><span class='plusButton'> <i class="material-icons">add</i></span></td>
								  			<td>
								  				<label class="bmd-label-floating">Name</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Day</label>
								  				<input type="number" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Star</label>
								  				<input type="number" class="form-control" >
								  			</td>
								  			<td>
									  			<label class="bmd-label-floating">Price</label>
								  				<input type="number" class="form-control"> 
								  				<select class="form-control" style="width:100px;">
								  					<option>/Room</option>
			                          				<option>/Person</option>
			                          				<option>/Group</option>
			                          				<option>/Couple</option>
		                         				</select>
		                         			</td>
								  		</tr>
								  	</table>
							 	</div>
							 	 <div class="tabBlock-pane">
								    <table class="tabTable" border="1" style="width: 100%;">
								  		<tr>
								  			<td><span class='plusButton'> <i class="material-icons">add</i></span></td>
								  			<td>
								  				<label class="bmd-label-floating">Cuisine</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Includes</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Hotel</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Star</label>
								  				<input type="number" class="form-control" >
								  			</td>
								  			<td>
									  			<label class="bmd-label-floating">Price</label>
								  				<input type="number" class="form-control"> 
								  				<select class="form-control" style="width:100px;">
								  					<option>/Room</option>
			                          				<option>/Person</option>
			                          				<option>/Group</option>
			                          				<option>/Couple</option>
		                         				</select>
		                         			</td>
								  		</tr>
								  	</table>
							 	</div>
							 	<div class="tabBlock-pane">
								    <table class="tabTable" border="1" style="width: 100%;">
								  		<tr>
								  			<td><span class='plusButton'> <i class="material-icons">add</i></span></td>
								  			<td>
								  				<label class="bmd-label-floating">Activity/Sight</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Sub Name</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Includes</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Day</label>
								  				<input type="1" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Images</label>
								  				<input type="file" class="form-control">
								  			</td>
								  			<td>
									  			<label class="bmd-label-floating">Price</label>
								  				<input type="number" class="form-control"> 
								  				<select class="form-control" style="width:100px;">
								  					<option>/Room</option>
			                          				<option>/Person</option>
			                          				<option>/Group</option>
			                          				<option>/Couple</option>
		                         				</select>
		                         			</td>
								  		</tr>
								  	</table>
							 	</div>
							 	<div class="tabBlock-pane">
								  	<table class="tabTable" border="1" style="width: 100%;">
								  		<tr>
								  			<td><span class='plusButton'> <i class="material-icons">add</i></span></td>
								  			<td>
								  				<label class="bmd-label-floating">Mode</label>
								  				<select class="form-control">
								  					<option value="Bus">Bus</option>
								  					<option value="Flight">Flight</option>
								  					<option value="Train">Train</option>
								  					<option value="Private Vehical">Private Vehical</option>
								  				</select>
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Date</label>
								  				<input type="date" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Time</label>
								  				<input type="time" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Place</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Price</label>
								  				<input type="number" class="form-control"> 
								  				<select class="form-control" style="width:100px;">
			                          				<option>/Person</option>
			                          				<option>/Group</option>
			                          				<option>/Couple</option>
	                          					</select>
								  			</td>
								  		</tr>
								  	</table>
							  </div>
							  <div class="tabBlock-pane">
								  	<table class="tabTable" border="1" style="width: 100%;">
								  		<tr>
								  			<td><span class='plusButton'> <i class="material-icons">add</i></span></td>
								  			<td>
								  				<label class="bmd-label-floating">Benifit</label>
								  				<input type="text" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Description</label>
								  				<input type="text" class="form-control">
								  			</td>
								  		</tr>
								  	</table>
							  </div>
							</div>
						</figure>
						<table style="width: 100%;text-align: center;">
							<tr>
								<td colspan="100%">
									<label class="bmd-label-floating">Other Description</label> 
	                         		<textarea rows="1" cols="9" class="form-control"></textarea>
								</td>
							</tr>
							<tr><td>&nbsp;</td></tr>
							<tr><td colspan="100;" ><input type="button" value="Submit"></td></tr>
							<tr><td>&nbsp;</td></tr>
							<tr>
								<td><input type="button" value="Add Route"></td>
								<td><input type="button" value="Add Offers"></td>
								<td><input type="button" value="Design Brochure"></td>
							</tr>
							<tr>
								<td><input type="button" value="Design Pages"></td>
								<td><input type="button" value="Send Emails To Customers"></td>
								<td><input type="button" value="Send Messages To Customers"></td>
							</tr>
						</table>
                     </form>
                </div>
              </div>
            </div>
            <!-- END -->
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="#">
                  Raahi
                </a>
              </li>
              <li>
                <a href="#">
                  About Us
                </a>
              </li>
              <li>
                <a href="#">
                  Blog
                </a>
              </li>
              <li>
                <a href="#">
                  Licenses
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="#" target="_blank">Raahi</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
              <span class="badge filter badge-rose active" data-color="rose"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="./resources/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="./resources/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="./resources/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="./resources/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
          <a href="#" target="_blank" class="btn btn-primary btn-block">Free Download</a>
        </li>
        <li class="button-container">
          <a href="#" target="_blank" class="btn btn-default btn-block">
            View Documentation
          </a>
        </li>
        <li class="button-container github-star">
          <a class="github-button" href="#" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="">Star</a>
        </li>
        <li class="header-title">Thank you for choosing us!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
        </li>
      </ul>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="./resources/js/core/jquery.min.js"></script>
  <script src="./resources/js/core/popper.min.js"></script>
  <script src="./resources/js/core/bootstrap-material-design.min.js"></script>
  <script src="./resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="./resources/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="./resources/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="./resources/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="./resources/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="./resources/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="./resources/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="./resources/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="./resources/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="./resources/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="./resources/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="./resources/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="./resources/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="./resources/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="./resources/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="./resources/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="./resources/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="./resources/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
    
    var TabBlock = {
  		  s: {
  		    animLen: 200
  		  },
  		  
  		  init: function() {
  		    TabBlock.bindUIActions();
  		    TabBlock.hideInactive();
  		  },
  		  
  		  bindUIActions: function() {
  		    $('.tabBlock-tabs').on('click', '.tabBlock-tab', function(){
  		      TabBlock.switchTab($(this));
  		    });
  		  },
  		  
  		  hideInactive: function() {
  		    var $tabBlocks = $('.tabBlock');
  		    
  		    $tabBlocks.each(function(i) {
  		      var 
  		        $tabBlock = $($tabBlocks[i]),
  		        $panes = $tabBlock.find('.tabBlock-pane'),
  		        $activeTab = $tabBlock.find('.tabBlock-tab.is-active');
  		      
  		      $panes.hide();
  		      $($panes[$activeTab.index()]).show();
  		    });
  		  },
  		  
  		  switchTab: function($tab) {
  		    var $context = $tab.closest('.tabBlock');
  		    
  		    if (!$tab.hasClass('is-active')) {
  		      $tab.siblings().removeClass('is-active');
  		      $tab.addClass('is-active');
  		   
  		      TabBlock.showPane($tab.index(), $context);
  		    }
  		   },
  		  
  		  showPane: function(i, $context) {
  		    var $panes = $context.find('.tabBlock-pane');
  		    $panes.slideUp(TabBlock.s.animLen);
  		    $($panes[i]).slideDown(TabBlock.s.animLen);
  		  }
  		};

  		$(function() {
  		  TabBlock.init();
  		});
  		
  		
  </script>
</body>

</html>
