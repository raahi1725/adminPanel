<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<script src="./resources/js/adminJs/packages.js"></script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link rel="stylesheet" href="./resources/css/packages.css">
<script src="./resources/js/login/jquery.steps.js"></script>
</head>
<body class="">
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Packages</h4>
                  <p class="card-category">Start a new Journey</p>
                </div>
               <div class="wizard-form">
				<div class="wizard-header">
					<h3 class="heading"></h3>
				</div>
		        <form:form class="form-register" action="/register" method="POST" modelAttribute="registerRequestBean">
		        	<div id="form-total">
		        		<!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Basic</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Pickup</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Drop</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Hotel</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Food</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Activities</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Basic</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
			            <!-- SECTION 1 -->
		        		<h2>
			            	<span class="step-icon" id="aboutDiv"><i class="fas fa-landmark"></i></span>	
			            	<span class="step-text">Basic</span>
			            </h2>
			            <section>
			                <div class="inner">
								<div class="form-row">
									<div class="form-holder">
										<label class="form-row-inner">
											<form:input type="text" class="form-control" id="orgName" path="orgName" maxlength="50" value="Kp Dreams"/>
											<span class="label">Organization Name <span class="required" >*</span></span>
					  						<span class="border"></span>
										</label>
									</div>
								</div>
							</div>
			            </section>
						<input type="submit" value="Register" id="registerForm" class="hide" />
		        	</div>
		        </form:form>
		     </div>
            <!-- END -->
          </div>
        </div>
      </div>
     </div>
     </div>
</body>

</html>
