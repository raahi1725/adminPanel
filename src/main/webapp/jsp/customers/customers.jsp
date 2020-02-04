<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <script src="./resources/js/adminJs/customer.js"></script>
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
		                          <select name="gender" class="form-control-select">
		                          		<option value="0" >Gender</option>
	                					<option value="MALE">MALE</option>
	                					<option value="FEMALE">FEMALE</option>
	                					<option value="OTHER">OTHER</option>
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
		                          <select name="bloodGroup" class="form-control-select">
		                          		<option value="" >Blood Group</option>
	                					<option value="A+ve">A+ve</option>
	                					<option value="A-ve">A-ve</option>
	                					<option value="B+ve">B+ve</option>
	                					<option value="AB+ve">AB+ve</option>
	                					<option value="AB-ve">AB-ve</option>
	                					<option value="O+ve">O+ve</option>
	                					<option value="O-ve">O-ve</option>
                				  </select>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		 <div class="col-md-8">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Address</label>
		                          <textarea name="address"  class="form-control"></textarea>
		                        </div>
	                        </div>
                    	</div>
                    	<div class="row">
                    		<div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">State</label>
		                          <input name="state"  type="text" class="form-control">
		                        </div>
	                        </div>
	                        <div class="col-md-3">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Country</label>
		                          <input name="country"  type="text" class="form-control">
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
		                            <select name="hearedFrom" id="hearedFromSelect" class="form-control-select" onchange="showHideOther()">
		                          		<option value="" >Here Us From?</option>
		                          		<option value="Google Search" >Google Search</option>
	                					<option value="Instagram">Instagram</option>
	                					<option value="Facebook">Facebook</option>
	                					<option value="Advertisement">Advertisement</option>
	                					<option value="Other">Other</option>
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
