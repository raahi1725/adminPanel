<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="./resources/css/select2.min.css">
  <link rel="stylesheet" href="./resources/css/intlTelInput.css">
  <link rel="stylesheet" href="./resources/css/demo.css">
  <script src="./resources/js/adminJs/customer.js"></script>
  <script src="./resources/js/commonJs/countrystatecity.js"></script>
  <script src="./resources/js/commonJs/select2.min.js"></script>
  <script src="./resources/js/telephone/intlTelInput.js"></script>
</head>
<body onload="onLoadData();">
      <div class="content">
        <div class="container-fluid">
         <span>${message}</span>
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Customers</h4>
                  <p class="card-category">Entry for new customer</p>
                </div>
                <div class="card-body">
                	 <form:form class="form-register" action="/customer" method="POST" modelAttribute="customerModel">
                		 <form:input path="customerId" id="customerId" />
                		<div class="row">
			                <div class="col-md-6">
			                    <div class="form-group">
				                    <label class="bmd-label-floating">Reg No</label>
				                    <form:input path="regNo" id="regNo" type="text" class="form-control" value="1"/>
		                   		</div>
		                	</div>
		                    <div class="col-md-6">
		                    	<div class="form-group">
			                        <label class="bmd-label-floating">Reg Date</label>
			                        <form:input path="regDate" id="regDate" type="text" class="form-control" value="1994-01-01"/>
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">First Name</label>
		                          <form:input path="firstName" id="firstName" type="text" class="form-control" value="Saloni"/>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Middle Name</label>
		                          <form:input path="middleName" id="middleName" type="text" class="form-control" value="R"/>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Last Name</label>
		                          <form:input path="lastName" id="lastName" type="text" class="form-control" value="Parekh"/>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Email</label>
		                          <form:input path="emailId" id="emailId" type="email" class="form-control" value="saloniparekh25@gmail.com"/>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="contactNo" id="contactNo" id="phone" name="phone" type="tel" class="form-control" placeholder="Contact No" value="9881735306"/>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="altContactNo" id="altContactNo" id="phone1" name="phone1" type="tel" class="form-control" placeholder="Alternate Contact" value="9881735305"/>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		  <div class="col-md-4">
		                        <div class="form-group">
		                          <select name="gender" class="form-control-select" id="gender"
		                         		 onchange="this.className=this.options[this.selectedIndex].className">
		                          		<option value="0" class="form-control-select-default">Gender</option>
	                					<option value="MALE" class="form-control-select-option">MALE</option>
	                					<option value="FEMALE" class="form-control-select-option" selected="selected">FEMALE</option>
	                					<option value="OTHER" class="form-control-select-option">OTHER</option>
                				  </select>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Birth Date</label>
		                          <form:input path="birthDate" id="birthDate" type="text" class="form-control" value="1994-01-01"/>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <select name="bloodGroup" class="form-control-select" id="bloodGroup"
		                         		 onchange="this.className=this.options[this.selectedIndex].className">
		                          		<option value="" class="form-control-select-default" >Blood Group</option>
	                					<option value="A+ve" class="form-control-select-option">A+ve</option>
	                					<option value="A-ve" class="form-control-select-option" selected="selected">A-ve</option>
	                					<option value="B+ve" class="form-control-select-option">B+ve</option>
	                					<option value="AB+ve" class="form-control-select-option">AB+ve</option>
	                					<option value="AB-ve" class="form-control-select-option">AB-ve</option>
	                					<option value="O+ve" class="form-control-select-option">O+ve</option>
	                					<option value="O-ve" class="form-control-select-option">O-ve</option>
                				  </select>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		 <div class="col-md-4">
		                        <div class="form-group">
		                          <form:select path="country" name="country" id="countryId" class="form-control-select js-example-basic-multiple  order-alpha presel-byip countries">
		                          	<option value="" class="form-control-select-default">Select Country</option>
		                          </form:select>
		                        </div>
	                        </div>
                    		<div class="col-md-4">
		                        <div class="form-group">
		                           <form:select path="state" name="state" id="stateId" class="form-control-select js-example-basic-multiple states">
		                           	<option value="" class="form-control-select-default">Select State</option>
		                           </form:select>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                           <form:select path="city" name="city" id="cityId" class="form-control-select js-example-basic-multiple cities">
		                           	<option value="" class="form-control-select-default">Select City</option>
		                           </form:select>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		 <div class="col-md-7">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Address</label>
		                          <form:textarea path="address" id="address" name="address"  class="form-control" style="height:36px !important;" value="pune" />
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">PinCode</label>
		                          <form:input path="pinCode" id="pinCode" type="text" class="form-control" value="411042"/>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Caste-Category</label>
		                          <form:input path="casteCategory" id="casteCategory" type="text" class="form-control" value="Jain" />
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Occupation</label>
		                          <form:input path="occupation" id="occupation" type="text" class="form-control" value="Service"/>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Nationality</label>
		                          <form:input path="nationality" id="nationality" type="text" class="form-control" value="Indian"/>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-6">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Referal Code</label>
		                          <form:input path="referalCodeId" id="referalCodeId" type="text" class="form-control" value="1"/>
		                        </div>
	                        </div>
	                        <div class="col-md-6" >
		                        <div class="form-group">
		                            <form:select path="hearedFrom" id="hearedFromSelect" 
		                            		class="form-control-select"
		                         		 	onchange="showHideOther(); this.className=this.options[this.selectedIndex].className">
		                          		<option value="" class="form-control-select-default">Here Us From?</option>
		                          		<option value="Google Search" class="form-control-select-option">Google Search</option>
	                					<option value="Instagram" class="form-control-select-option">Instagram</option>
	                					<option value="Facebook" class="form-control-select-option" selected="selected">Facebook</option>
	                					<option value="Advertisement" class="form-control-select-option">Advertisement</option>
	                					<option value="Other" class="form-control-select-option">Other</option>
                				  </form:select>
		                        </div>
	                        </div>
	                        <div class="col-md-3 hide" id="othersDiv">
		                        <div class="form-group" >
		                          <label class="bmd-label-floating">Other</label>
		                          <form:input path="other" id="other" type="text" class="form-control" />
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-6">
		                        <div class="">
		                          <label class="bmd-label-floating">Upload Id Proof</label>
		                          <input name="idProof" type="file" class="form-control" multiple >
		                        </div>
	                        </div>
	                        <div class="col-md-6">
		                        <div class="">
		                          <label class="bmd-label-floating">Upload Photo</label>
		                          <input name="photo" type="file" class="form-control" >
		                        </div>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-md-8">
		                        <div >
		                          <label class="bmd-label-floating">Upload Other</label>
		                          <input name="otherFile" type="file" class="form-control">
		                        </div>
	                        </div>
                    	</div>
                    	 <div class="row">
	                        <div class="col-md-12" style="text-align:center;">
		                        <div class="submitDiv">
		                          <input type="submit"  class="btn btn-primary btn-round" value="Submit">
		                         </div>
	                        </div>
                    	</div>
                    </form:form>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="#pablo">
                    <img class="img" src="../resources/img/faces/marc.jpg" />
                  </a>
                </div>
                <div class="card-body">
                  <div class="search">
				      <input type="text" class="searchTerm" id="searchParam" placeholder="Customer Name,Reg No,Contact No ">
				      <button type="submit" class="searchButton">
				        <i class="fa fa-search"></i>
				     </button>
   				  </div>
   				  <br/>
                  <h4 class="card-title">Customer Details </h4>
                  <input type="hidden" id="customerSearchId">
                  <p class="card-description"> Name : <span id="customerSearchName"></span> <br/> Reg No :<span id="customerSearchRegNo"></span> 
                  	<br/> Contact No :<span id="customerSearchContact"></span>
                  </p>
                  <a href="#pablo" class="btn btn-primary btn-round" style="color:white !important" onclick="getSearchDetails()">Edit</a>
                </div>
              </div>
          </div>
        </div>
      </div>
     </div>
</body>

</html>
