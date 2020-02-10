<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <script src="./resources/js/adminJs/packages.js"></script>
</head>
<body class="">
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-auto">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Packages</h4>
                  <p class="card-category">Start a new Journey</p>
                </div>
                <div class="card-body">
                	<form>
                		<div class="row">
			                <div class="col-md-5">
			                    <div class="form-group">
				                    <label class="bmd-label-floating">Package Name</label>
				                    <input name="packageName" type="text" class="form-control">
		                   		</div>
		                	</div>
		                    <div class="col-md-2">
		                    	<div class="form-group">
			                        <label class="bmd-label-floating">Days</label>
			                        <input name="days" type="text" class="form-control">
		                        </div>
		                    </div>
		                    <div class="col-md-2">
		                    	<div class="form-group">
			                        <label class="bmd-label-floating">Nights</label>
			                        <input name="nights" type="text" class="form-control">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
			                <div class="col-md-3">
			                    <div class="form-group">
				                    <label class="bmd-label-floating">Package Amount</label>
				                    <input name="packageAmount" type="text" class="form-control" style="float:left;">
		                   		</div>
		                	</div>
		                	<div class="col-md-2">
			                    <div class="form-group">
                          			<select class="form-control-select" style="width:100px;">
                          				<option>Per</option>
                          				<option>Person</option>
                          				<option>Group</option>
                          				<option>Couple</option>
                          			</select>
		                   		</div>
		                	</div>
		                    <div class="col-md-5">
		                    	<div class="form-group">
			                        <label class="bmd-label-floating">Criteria</label>
			                        <input name="criteria" type="text" class="form-control">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
			                <div class="col-md-5">
			                    <div class="form-group">
				                    <label class="bmd-label-floating">From Date</label>
				                    <input name="fromDate" type="date" class="form-control">
		                   		</div>
		                	</div>
		                    <div class="col-md-5">
		                    	<div class="form-group">
			                        <label class="bmd-label-floating">To Date</label>
			                        <input name="toDate" type="date" class="form-control">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
			                <div class="col-md-4">
			                    <div class="form-group" >
				                    <label class="bmd-label-floating">From </label>
				                    <input name="fromPlace" type="text" class="form-control">
		                   		</div>
		                	</div>
		                	 <div class="col-md-1">
		                	 	 <a class='plusButton' onclick="addFromRow()"> <i class="material-icons">add</i></a>
		                	</div>
		                	<div class="col-md-auto" id="fromTd"></div>
		                    <div class="col-md-4">
		                    	<div class="form-group">
			                      <label class="bmd-label-floating">To </label>
				                  <input name="toPlace" type="text" class="form-control">
		                        </div>
		                    </div>
		                     <div class="col-md-1">
			                    <a class='plusButton' onclick="addToRow()"> <i class="material-icons">add</i></a>
		                	</div>
		                </div>
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
							  	<table class="tabTable" id="travelBaseTable" >
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
								    <table class="tabTable">
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
								    <table class="tabTable" >
								  		<tr>
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
								  	<div id="foodTable"></div>
							  		<a class='plusButton' onclick="addFoodTables()"> <i class="material-icons">add</i></a>
							 	</div>
							 	<div class="tabBlock-pane">
								    <table class="tabTable">
								  		<tr>
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
								  	<div id="sightTable"></div>
							  		<a class='plusButton' onclick="addSightTables()"> <i class="material-icons">add</i></a>
							 	</div>
							 	<div class="tabBlock-pane">
								  	<table class="tabTable" >
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
								  	<div id="dropTable"></div>
							  		<a class='plusButton' onclick="addDropTables()"> <i class="material-icons">add</i></a>
							  </div>
							  <div class="tabBlock-pane">
								  	<table class="tabTable" >
								  		<tr>
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
								  	<div id="sightTable"></div>
							  		<a class='plusButton' onclick="addSightTables()"> <i class="material-icons">add</i></a>
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
  <script>
  </script>
</body>

</html>
