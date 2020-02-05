<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <script src="./resources/js/adminJs/customer.js"></script>
  <script src="//geodata.solutions/includes/countrystatecity.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
</head>

<body class="">
  <div class="wrapper ">
    <div class="main-panel">
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Customers</h4>
                  <p class="card-category">Entry for new customer</p>
                </div>
                <div class="card-body">
                	<form>
                		<div class="row">
			                <div class="col-md-3">
			                    <div class="form-group">
				                    <label class="bmd-label-floating">Reg No</label>
				                    <input name="regNo" type="text" class="form-control">
		                   		</div>
		                	</div>
		                    <div class="col-md-3">
		                    	<div class="form-group">
			                        <label class="bmd-label-floating">Reg Date</label>
			                        <input name="regDate" type="text" class="form-control">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">First Name</label>
		                          <input name="firstName" type="text" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Middle Name</label>
		                          <input name="middleName" type="text" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Last Name</label>
		                          <input name="lastName" type="text" class="form-control">
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		  <div class="col-md-3">
		                        <div class="form-group">
		                          <select name="gender" class="form-control-select"
		                         		 onchange="this.className=this.options[this.selectedIndex].className">
		                          		<option value="0" class="form-control-select-default">Gender</option>
	                					<option value="MALE" class="form-control-select-option">MALE</option>
	                					<option value="FEMALE" class="form-control-select-option">FEMALE</option>
	                					<option value="OTHER" class="form-control-select-option">OTHER</option>
                				  </select>
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Birth Date</label>
		                          <input name="birthDate" type="date" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <select name="bloodGroup" class="form-control-select"
		                         		 onchange="this.className=this.options[this.selectedIndex].className">
		                          		<option value="" class="form-control-select-default" >Blood Group</option>
	                					<option value="A+ve" class="form-control-select-option">A+ve</option>
	                					<option value="A-ve" class="form-control-select-option">A-ve</option>
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
                    		 <div class="col-md-3">
		                        <div class="form-group">
		                          <select name="country" id="countryId" class="form-control-select js-example-basic-multiple  order-alpha presel-byip countries">
		                          	<option value="" class="form-control-select-default">Select Country</option>
		                          </select>
		                        </div>
	                        </div>
                    		<div class="col-md-3">
		                        <div class="form-group">
		                           <select name="state" id="stateId" class="form-control-select js-example-basic-multiple states">
		                           	<option value="" class="form-control-select-default">Select State</option>
		                           </select>
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                           <select name="city" id="cityId" class="form-control-select js-example-basic-multiple cities">
		                           	<option value="" class="form-control-select-default">Select City</option>
		                           </select>
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">PinCode</label>
		                          <input name="pinCode"  type="text" class="form-control">
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		 <div class="col-md-7">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Address</label>
		                          <textarea name="address"  class="form-control"></textarea>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Caste-Category</label>
		                          <input name="casteCategory" type="text" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Occupation</label>
		                          <input name="occupation" type="text" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Nationality</label>
		                          <input name="nationality"  type="text" class="form-control">
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Email</label>
		                          <input name="email"  type="email" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Contact No</label>
		                          <input name="contactNo"  type="text" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Alt. Contact No</label>
		                          <input name="altContactNo" type="text" class="form-control">
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Referal Code</label>
		                          <input name="referalCode" type="text" class="form-control" multiple>
		                        </div>
	                        </div>
	                        <div class="col-md-3" >
		                        <div class="form-group">
		                            <select name="hearedFrom" id="hearedFromSelect" 
		                            		class="form-control-select"
		                         		 	onchange="showHideOther(); this.className=this.options[this.selectedIndex].className">
		                          		<option value="" class="form-control-select-default">Here Us From?</option>
		                          		<option value="Google Search" class="form-control-select-option">Google Search</option>
	                					<option value="Instagram" class="form-control-select-option">Instagram</option>
	                					<option value="Facebook" class="form-control-select-option">Facebook</option>
	                					<option value="Advertisement" class="form-control-select-option">Advertisement</option>
	                					<option value="Other" class="form-control-select-option">Other</option>
                				  </select>
		                        </div>
	                        </div>
	                        <div class="col-md-3 hide" id="othersDiv">
		                        <div class="form-group" >
		                          <label class="bmd-label-floating">Other</label>
		                          <input type="text" class="form-control">
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-5">
		                        <div class="">
		                          <label class="bmd-label-floating">Upload Id Proof</label>
		                          <input name="idProof" type="file" class="form-control" multiple>
		                        </div>
	                        </div>
	                        <div class="col-md-5">
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
	                        <div class="col-md-8">
		                        <div class="submitDiv">
		                          <input type="button" value="Submit">
		                         </div>
	                        </div>
                    	</div>
                     </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>
