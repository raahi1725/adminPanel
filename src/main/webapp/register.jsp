<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Register To Raahi</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<link rel="stylesheet" href="./resources/css/login/bootstrap.css">
	<link rel="stylesheet" href="./resources/css/login/style.css">
	<link rel="stylesheet" href="./resources/css/login/model.css">
	<link rel="stylesheet" href="./resources/css/select2.min.css">
 	<link rel="stylesheet" href="./resources/css/intlTelInput.css">
	<script src="./resources/js/login/all.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
	<script src="./resources/js/login/modernizr-2.6.2.min.js"></script>
	<script src="./resources/js/login/jquery.min.js"></script>
	<script src="./resources/js/login/bootstrap.min.js"></script>
	<script src="./resources/js/login/jquery.waypoints.min.js"></script>
	<script src="./resources/js/login/jquery.stellar.min.js"></script>
	<script src="./resources/js/login/jquery.mb.YTPlayer.min.js"></script>
	<script src="./resources/js/login/owl.carousel.min.js"></script>
	<script src="./resources/js/login/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/login/magnific-popup-options.js"></script>
	<script src="./resources/js/login/jquery.countTo.js"></script>
	<script src="./resources/js/login/main.js"></script>
	<script src="./resources/js/login/jquery.steps.js"></script>
	<script src="./resources/js/login/jquery-ui.min.js"></script>
	<script src="./resources/js/telephone/intlTelInput.js"></script>
	<script>
	function loadSelect() {
		   $(".js-example-basic-multiple").select2();
	}
	</script>
	<style>
	.iti {
    	position: relative;
    	display: inline;
	}
	.svg-inline--fa {
	    height: 40px;
	    margin-left: 7px;
	}

	.form-register .steps li a .title .step-icon {
	    font-size: 32px;
	}
	</style>
</head>
<body onload="loadSelect()">
	<div class="page-content" style="background-image: url('images/wizard-v4.jpg')">
            <div class="modal-body page-content">
            	<div class="wizard-form">
				<div class="wizard-header">
					<h3 class="heading">Sign Up To Raahi</h3>
					<p>Fill all form field to go next step</p>
				</div>
		        <form:form class="form-register" action="/register" method="POST" modelAttribute="registerRequestBean">
		        	<div id="form-total">
		        		<!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">About</span>
			            </h2>
			            <section>
			                <div class="inner">
			                	<h3>Organization Information:</h3>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50"/>
											<span class="label">Organization Name <span class="required">*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgWebsite" path="website" maxlength="30"/>
											<span class="label">Website</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgRegNo" path="orgRegNo" maxlength="30"/>
											<span class="label">Registration Id</span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
						<!-- SECTION 2 -->
			            <h2>
			            	<span class="step-icon" id="headBranchDiv"><i class="fas fa-building"></i></span>	
			            	<span class="step-text">Head Branch</span>
			            </h2>
			            <section>
			                <div class="inner">
			                	<h3>Head Branch</h3>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="headBranchName" path="headBranchName" maxlength="50" />
											<span class="label">Branch Name<span class="required">*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="email" class="form-control" id="branchEmail" path="branchEmail" maxlength="50"/>
											<span class="label">Email<span class="required"></span></span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input type="tel" class="form-control" id="branchContactShow" onkeypress='validate(event)' maxlength="10" style="width:200px;padding:0px 40px;"/>
											<span class="label" style="position:initial;">Contact No<span class="required">*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:textarea class="form-control" id="branchAddress" path="branchAddress" maxlength="100" style="height:43px;"/>
											<span class="label">Address</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="branchPostalCode" path="branchPostalCode" onkeypress='validate(event)' maxlength="6"/>
											<span class="label">Pin Code</span>
					  						<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="noOfBranches" path="noOfBranches" maxlength="5"/>
											<span class="label">No Of Branches</span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 3 -->
			            <h2>
			            	<span class="step-icon"><i class="fas fa-user"></i></span>	
			            	<span class="step-text">Admin</span>
			            </h2>
			            <section>
			                <div class="inner">
			                	<h3>Owner/Admin Details</h3>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="adminFirstName" path="adminFirstName" maxlength="20"/>
											<span class="label">First Name<span class="required">*</span></span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="adminLastName" path="adminLastName" maxlength="20"/>
											<span class="label">Last Name<span class="required">*</span></span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<input id="userContactShow" name="phone" onkeypress='validate(event)' maxlength="10" type="tel" class="form-control" style="width:200px;padding:0px 40px;"/>
											<span class="label" style="position:initial;">Contact No<span class="required">*</span></span>
											<span class="border"></span>
										</label>
									</div>
								</div>
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="email" class="form-control" id="userEmail" path="username" maxlength="50"/>
											<span class="label">Email<span class="required">*</span></span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="password" class="form-control" id="userPassword" path="password" minlength="5" maxlength="20"/>
											<span class="label">Password<span class="required">*</span></span>
											<span class="border"></span>
										</label>
									</div>
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="password" class="form-control" id="userConfirmPassword" path="passwordConfirm" maxlength="20"/> 
											<span class="label">Confirm Password<span class="required">*</span></span>
											<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
							<input type="submit" value="Register" id="registerForm" class="hide"/>
			            </section>
		        	</div>
		        </form:form>
		     </div>
		    </div>
		</div>
</body>
</html>