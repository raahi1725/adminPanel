<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <script src="./resources/js/adminJs/packages.js"></script>
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
                  <h4 class="card-title">Add Packages</h4>
                  <p class="card-category">Start a new Journey</p>
                </div>
                <div class="card-body">
                	<form>
                		<table>
                			<tr>
                				<td><label>Package Name : </label></td>
                				<td><input type="text" class="boxInput"></td>
                				<td><input type="number" class="boxInput" style="width:70px;">&nbsp;&nbsp;<label>Days</label></td>
                				<td><input type="number" class="boxInput" style="width:70px;">&nbsp;&nbsp;<label>Nights</label></td>
                			</tr>
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
                				<td colspan="2"><input type="text" placeholder="Criteria" class="form-control"></td>
                			</tr>
                			<tr>
                				<td><label>From Date : </label></td>
                          		<td><input type="date" class="boxInput"></td>
                          		<td  style="text-align: right;"><label>To  Date : </label></td>
                          		<td><input type="date" class="boxInput"></td>
                			</tr>
                			<tr>
                				<td><label>From : </label></td>
                				<td style="white-space: nowrap;" id="fromTd"><input type="text" class="boxInput">
                          		&nbsp;&nbsp;<a class='plusButton' onclick="addFromRow()"> <i class="material-icons">add</i> </a></td>
                          		<td style="text-align: right;"><label>To : </label></td>
                          		<td style="white-space: nowrap;" id="toTd"><input type="text" class="boxInput">
                          		&nbsp;&nbsp;<a class='plusButton' onclick="addToRow()"> <i class="material-icons">add</i></a></td>
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
							</ul>
							<div class="tabBlock-content">
							  <div class="tabBlock-pane">
							  	<table class="tabTable" id="pickupBaseTable">
							  		<tr>
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
							  		</tr>
							  		<tr>
							  			<td colspan="2">
							  				<label class="bmd-label-floating">Details</label>
							  				<textarea class="form-control"></textarea>
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Price</label>
							  				<input type="number" class="form-control">
							  			</td>
							  			<td> 
							  				<label class="bmd-label-floating">Per</label>
							  				<select class="form-control">
		                          				<option>Person</option>
		                          				<option>Group</option>
		                          				<option>Couple</option>
                          					</select>
							  			</td>
							  		</tr>
							  	</table>
							  	<div id="pickupTable" class="pickupTables"></div>
							  	<a class='plusButton' onclick="addPickupTables()"><i class="material-icons">add</i></a>
							  </div>
							  <div class="tabBlock-pane">
							  	<table class="tabTable" id="travelBaseTable" style="width: 100%;">
							  		<tr>
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
							  				<label class="bmd-label-floating">Dep Time</label>
							  				<input type="time" class="form-control">
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Arrival Time</label>
							  				<input type="time" class="form-control">
							  			</td>
							  		</tr>
							  		<tr>
							  			<td>
							  				<label class="bmd-label-floating">Place</label>
							  				<input type="text" class="form-control">
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Details</label>
							  				<textarea class="form-control"></textarea>
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Price</label>
							  				<input type="number" class="form-control"> 
							  			</td>
							  			<td>
							  				<label class="bmd-label-floating">Per</label>
							  				<select class="form-control" >
		                          				<option>/Person</option>
		                          				<option>/Group</option>
		                          				<option>/Couple</option>
                          					</select>
							  			</td>
							  		</tr>
							  	</table>
							  	<div id="travelTable"></div>
							  	<a class='plusButton' onclick="addTravelTables()"> <i class="material-icons">add</i></a>
							  	</div>
							    <div class="tabBlock-pane">
								    <table class="tabTable"  style="width: 100%;">
								  		<tr>
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
								  				<label class="bmd-label-floating">Address</label>
								  				<input type="text" class="form-control" >
								  			</td>
								  		</tr>
								  		<tr>
								  			<td colspan="2">
								  				<label class="bmd-label-floating">Details</label>
								  				<textarea class="form-control"></textarea>
							  				</td>
								  			<td>
									  			<label class="bmd-label-floating">Price</label>
								  				<input type="number" class="form-control"> 
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Per</label>
								  				<select class="form-control">
								  					<option>/Room</option>
			                          				<option>/Person</option>
			                          				<option>/Group</option>
			                          				<option>/Couple</option>
		                         				</select>
		                         			</td>
								  		</tr>
								  	</table>
								  	<div id="hotelTable"></div>
							  		<a class='plusButton' onclick="addHotelTables()"> <i class="material-icons">add</i></a>
							 	</div>
							 	 <div class="tabBlock-pane">
								    <table class="tabTable"  style="width: 100%;">
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
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Per</label>
								  				<select class="form-control">
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
								    <table class="tabTable"  style="width: 100%;">
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
								  				<input type="number" class="form-control">
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Images</label>
								  				<input type="file" class="form-control" multiple>
								  			</td>
								  			<td>
									  			<label class="bmd-label-floating">Price</label>
								  				<input type="number" class="form-control"> 
								  			</td>
								  			<td>
								  				<label class="bmd-label-floating">Per</label>
								  				<select class="form-control">
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
								  	<table class="tabTable"  style="width: 100%;">
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
								  				<select class="form-control">
			                          				<option>/Person</option>
			                          				<option>/Group</option>
			                          				<option>/Couple</option>
	                          					</select>
								  			</td>
								  		</tr>
								  	</table>
							  </div>
							  <div class="tabBlock-pane">
								  	<table class="tabTable"  style="width: 100%;">
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
							<tr><td style="line-height: 0.8;">&nbsp;</td></tr>
							<tr>
								<td><a href="#">Other Benefits</a></td>
								<td><a href="#">Exclusions</a></td>
								<td><a href="#">Policies</a></td>
								<td><a href="#">Things To Carry</a></td>
								<td><a href="#">Images</a></td>
							</tr>
							<tr><td style="line-height: 0.8;">&nbsp;</td></tr>
							<tr>
								<td colspan="100%"><input type="button" value="Submit"></td>
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
    </div>
  </div>
  <script>
  </script>
</body>

</html>
