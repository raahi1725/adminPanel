<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Register To Raahi</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400" rel="stylesheet">
	<link rel="stylesheet" href="./resources/css/login/animate.css">
	<link rel="stylesheet" href="./resources/css/login/icomoon.css">
	<link rel="stylesheet" href="./resources/css/login/bootstrap.css">
	<link rel="stylesheet" href="./resources/css/login/magnific-popup.css">
	<link rel="stylesheet" href="./resources/css/login/owl.carousel.min.css">
	<link rel="stylesheet" href="./resources/css/login/owl.theme.default.min.css">
	<link rel="stylesheet" href="./resources/css/login/style.css">
	<link rel="stylesheet" href="./resources/css/login/model.css">
	<link rel="stylesheet" href="./resources/css/select2.min.css">
	<link rel="stylesheet" type="text/css" href="css/opensans-font.css">
	<link rel="stylesheet" type="text/css" href="css/roboto-font.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/login/material-design-iconic-font.min.css">
	<script src="./resources/js/adminJs/customer.js"></script>
  	<script src="./resources/js/commonJs/countrystatecity.js"></script>
  	<script src="./resources/js/commonJs/select2.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.js" integrity="sha256-2JRzNxMJiS0aHOJjG+liqsEOuBb6++9cY4dSOyiijX4=" crossorigin="anonymous"></script>
	<script src="./resources/js/login/modernizr-2.6.2.min.js"></script>
	<script src="./resources/js/login/jquery.min.js"></script>
	<script src="./resources/js/login/jquery.easing.1.3.js"></script>
	<script src="./resources/js/login/bootstrap.min.js"></script>
	<script src="./resources/js/login/jquery.waypoints.min.js"></script>
	<script src="./resources/js/login/jquery.stellar.min.js"></script>
	<script src="./resources/js/login/jquery.mb.YTPlayer.min.js"></script>
	<script src="./resources/js/login/owl.carousel.min.js"></script>
	<script src="./resources/js/login/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/login/magnific-popup-options.js"></script>
	<script src="./resources/js/login/jquery.countTo.js"></script>
	<script src="./resources/js/login/main.js"></script>
	<!-- <script src="./resources/js/login/jquery-3.3.1.min.js"></script> -->
	<script src="./resources/js/login/jquery.steps.js"></script>
	<script src="./resources/js/login/jquery-ui.min.js"></script>
</head>
<body>
	<div class="page-content" style="background-image: url('images/wizard-v4.jpg')">
            <div class="modal-body page-content">
            	<div class="wizard-form">
				<div class="wizard-header">
					<h3 class="heading">Sign Up To Raahi</h3>
					<p>Fill all form field to go next step</p>
				</div>
		        <form class="form-register" action="#" method="post">
		        	<div id="form-total">
		        		<!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon"><i class="zmdi zmdi-account"></i></span>
			            	<span class="step-text">About</span>
			            </h2>
			            <section>
			                <div class="inner">
			                	<h3>Organization Information:</h3>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="orgName" name="orgName" required>
											<span class="label">Organization Name</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="orgWebsite" name="orgWebsite" required>
											<span class="label">Website</span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
								<div class="form-row">
									<div class="form-holder form-holder-1">
										<label class="form-row-inner">
											<input type="file" class="form-control" id="logoImage" name="logoImage" required>
					  						<span class="border"></span>
										</label>
									</div>
									<!-- <div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="code" name="code" required>
											<span class="label">Zip Code</span>
					  						<span class="border"></span>
										</label>
									</div> -->
								</div>
							</div>
			            </section>
						<!-- SECTION 2 -->
			            <h2>
			            	<span class="step-icon"><i class="zmdi zmdi-lock"></i></span>
			            	<span class="step-text">Head Branch</span>
			            </h2>
			            <section>
			                <div class="inner">
			                	<h3>Head Branch</h3>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="branchName" name="branchName" required>
											<span class="label">Branch Name</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="branchEmail" name="branchEmail" required>
											<span class="label">Email</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="branchContact" name="branchContact" required>
											<span class="label">Contact No</span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
								<div class="form-row">
									<div class="form-holder  form-holder-2">
										<select name="country" id="countryId" class="form-control-select js-example-basic-multiple  order-alpha presel-byip countries">
                       						<option value="" class="form-control-select-default">Select Country</option>
                       					</select>		
									</div>
									<div class="form-holder  form-holder-2">
										<select name="state" id="stateId" class="form-control-select js-example-basic-multiple  order-alpha presel-byip countries">
                       						<option value="" class="form-control-select-default">Select State</option>
                       					</select>		
									</div>
									<div class="form-holder  form-holder-2">
										<select name="city" id="cityId" class="form-control-select js-example-basic-multiple  order-alpha presel-byip countries">
                       						<option value="" class="form-control-select-default">Select City</option>
                       					</select>		
									</div>
								</div>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="branchAddress" name="branchAddress" required>
											<span class="label">Address</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="branchPinCode" name="branchPinCode" required>
											<span class="label">Pin Code</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="branchNo" name="branchNo" required>
											<span class="label">No Of Branches</span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 3 -->
			            <h2>
			            	<span class="step-icon"><i class="zmdi zmdi-receipt"></i></span>
			            	<span class="step-text">Admin</span>
			            </h2>
			            <section>
			                <div class="inner">
			                	<h3>More About Primary User</h3>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="firstName" name="firstName" required>
											<span class="label">First Name</span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="lastName" name="lastName" required>
											<span class="label">Last Name</span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="userContact" name="userContact" required>
											<span class="label">Contact No</span>
											<span class="border"></span>
										</label>
									</div>
								</div>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="email" class="form-control" id="userEmail" name="userEmail" required>
											<span class="label">Email</span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="email" class="form-control" id="userPassword" name="userPassword" required>
											<span class="label">Password</span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="text" class="form-control" id="userConfirmPassword" name="userConfirmPassword" required>
											<span class="label">Confirm Password</span>
											<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
		        	</div>
		        </form>
		     </div>
		    </div>
		</div>
</body>
</html>