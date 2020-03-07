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
         <span style="color: #13a013;font-size: 20px;">${message}</span>
         <span style="color: red;font-size: 20px;">${error}</span>
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Customers</h4>
                  <p class="card-category">Entry for new customer</p>
                </div>
                <div class="card-body">
                	 <form:form class="form-register" action="/customer" method="POST" modelAttribute="customerModel">
                		 <form:hidden path="customerId" id="customerId" />
                		<div class="row">
			                <div class="col-md-6">
			                    <div class="form-group">
				                    <form:input path="regNo" id="regNo" type="text" class="form-control" />
				                    <label>Reg No</label>
		                   		</div>
		                	</div>
		                    <div class="col-md-6">
		                    	<div class="form-group">
			                        <form:input path="regDate" id="regDate" type="text" class="form-control" />
			                        <label>Reg Date</label>
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="firstName" id="firstName" type="text" class="form-control" />
		                          <label>First Name</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="middleName" id="middleName" type="text" class="form-control" />
		                          <label>Middle Name</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="lastName" id="lastName" type="text" class="form-control" />
		                          <label>Last Name</label>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="emailId" id="emailId" type="email" class="form-control" />
		                          <label>Email</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="contactNo" id="phone" name="phone" type="tel" class="form-control"/>
		                          <label>Contact No</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="altContactNo" id="phone1" name="phone1" type="tel" class="form-control"/>
		                          <label>Alternate Contact</label>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		  <div class="col-md-4">
		                        <div class="form-group">
		                          <select name="gender" class="form-control-select" id="gender"
		                         		 onchange="this.className=this.options[this.selectedIndex].className">
		                          		<option value="0" class="form-control-select-default"></option>
	                					<option value="MALE" class="form-control-select-option">MALE</option>
	                					<option value="FEMALE" class="form-control-select-option" >FEMALE</option>
	                					<option value="OTHER" class="form-control-select-option">OTHER</option>
                				  </select>
                				  <label>Gender</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="birthDate" id="birthDate" type="text" class="form-control"/>
		                          <label>Birth Date</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <select name="bloodGroup" class="form-control-select" id="bloodGroup"
		                         		 onchange="this.className=this.options[this.selectedIndex].className">
		                          		<option value="" class="form-control-select-default" ></option>
	                					<option value="A+ve" class="form-control-select-option">A+ve</option>
	                					<option value="A-ve" class="form-control-select-option" >A-ve</option>
	                					<option value="B+ve" class="form-control-select-option">B+ve</option>
	                					<option value="AB+ve" class="form-control-select-option">AB+ve</option>
	                					<option value="AB-ve" class="form-control-select-option">AB-ve</option>
	                					<option value="O+ve" class="form-control-select-option">O+ve</option>
	                					<option value="O-ve" class="form-control-select-option">O-ve</option>
                				  </select>
                				   <label>Blood Group</label>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		 <div class="col-md-4">
		                        <div class="form-group">
		                          <form:select path="country" name="country" id="countryId" class="form-control-select js-example-basic-multiple  order-alpha presel-byip countries">
		                          	<option value="0" class="form-control-select-default"></option>
		                          </form:select>
		                          <label>Country</label>
		                        </div>
	                        </div>
                    		<div class="col-md-4">
		                        <div class="form-group">
		                           <form:select path="state" name="state" id="stateId" class="form-control-select js-example-basic-multiple states">
		                           		<option value="0" class="form-control-select-default"></option>
		                           </form:select>
		                           <label>State</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                           <form:select path="city" name="city" id="cityId" class="form-control-select js-example-basic-multiple cities">
		                           		<option value="0" class="form-control-select-default"></option>
		                           </form:select>
		                           <label>City</label>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		 <div class="col-md-7">
		                        <div class="form-group">
		                          <form:textarea path="address" id="address" name="address"  class="form-control" style="height:36px !important;"/>
		                           <label>Address</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="pinCode" id="pinCode" type="text" class="form-control" />
		                           <label>PinCode</label>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="casteCategory" id="casteCategory" type="text" class="form-control"  />
		                           <label>Caste-Category</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="occupation" id="occupation" type="text" class="form-control" />
		                          <label>Occupation</label>
		                        </div>
	                        </div>
	                        <div class="col-md-4">
		                        <div class="form-group">
		                          <form:input path="nationality" id="nationality" type="text" class="form-control" />
		                           <label>Nationality</label>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-6">
		                        <div class="form-group">
		                          <form:input path="referalCodeId" id="referalCodeId" type="text" class="form-control"/>
		                          <label>Referal Code</label>
		                        </div>
	                        </div>
	                        <div class="col-md-6" >
		                        <div class="form-group">
		                            <form:select path="hearedFrom" id="hearedFromSelect" 
		                            		class="form-control-select"
		                         		 	onchange="showHideOther();">
		                          		<option value="" class="form-control-select-default"></option>
		                          		<option value="Google Search" class="form-control-select-option">Google Search</option>
	                					<option value="Instagram" class="form-control-select-option">Instagram</option>
	                					<option value="Facebook" class="form-control-select-option" >Facebook</option>
	                					<option value="Advertisement" class="form-control-select-option">Advertisement</option>
	                					<option value="Other" class="form-control-select-option">Other</option>
                				  </form:select>
                				  <label>Here Us From?</label>
		                        </div>
	                        </div>
	                        <div class="col-md-3 hide" id="othersDiv">
		                        <div class="form-group" >
		                          <form:input path="other" id="other" type="text" class="form-control" />
		                          <label>Other</label>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-6">
		                        <div class="">
		                          <input name="idProof" type="file" class="form-control" multiple >
		                          <label>Upload Id Proof</label>
		                        </div>
	                        </div>
	                        <div class="col-md-6">
		                        <div class="">
		                          <input name="photo" type="file" class="form-control" >
		                          <label>Upload Photo</label>
		                        </div>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-md-8">
		                        <div >
		                          <input name="otherFile" type="file" class="form-control">
		                          <label>Upload Other</label>
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
				      <input type="text" class="searchTerm" id="searchParam" placeholder="Customer Name,Reg No,Contact No " >
				      <button type="submit" class="searchButton">
				        <i class="fa fa-search"></i>
				     </button>
   				  </div>
   				  <br/>
                  <h4 class="card-title">Customer Details </h4>
                  <input type="hidden" id="customerSearchId">
                  <input type="text" name="nameIdHidden" style="display:none;">
                  <p class="card-description"> Name : <span id="customerSearchName" class="editSpan"></span> <br/> Reg No :<span id="customerSearchRegNo" class="editSpan"></span> 
                  	<br/> Contact No :<span id="customerSearchContact" class="editSpan"></span>
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
