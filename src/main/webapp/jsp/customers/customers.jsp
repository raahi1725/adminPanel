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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
                		<table>
                			<tr class="form-group">
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Reg No</label></td>
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Reg Date</label></td>
                			</tr>
                			<tr>
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">First Name</label></td>
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Middle Name</label></td>
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Last Name</label></td>
                			</tr>
                			<tr>
                				<td><select class="form-control">
	                					<option value="MALE">MALE</option>
	                					<option value="FEMALE">FEMALE</option>
	                					<option value="OTHER">OTHER</option>
                					</select>
                					<label>Gender : </label>
                				</td>
                				<td><input type="date" class="form-control"><label>Birth Date : </label></td>
                				<td><select class="form-control">
	                					<option value="A+ve">A+ve</option>
	                					<option value="A-ve">A-ve</option>
	                					<option value="B+ve">B+ve</option>
	                					<option value="AB+ve">AB+ve</option>
	                					<option value="AB-ve">AB-ve</option>
	                					<option value="O+ve">O+ve</option>
	                					<option value="O-ve">O-ve</option>
                					</select><label>Blood Group : </label>
                				</td>
                			</tr>
                			<tr class="form-group">
                				<td colspan="5"><textarea class="form-control"></textarea>
                				<label class="bmd-label-floating">Address</label></td>
                			</tr>
                			<tr class="form-group">
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">State</label></td>
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Country</label></td>
                				<td><input type="number" class="form-control"><label class="bmd-label-floating">PinCode</label></td>
                			</tr>
                			<tr class="form-group">
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Caste-Category</label></td>
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Occupation</label></td>
                				<td><input type="text" class="form-control"><label class="bmd-label-floating">Nationality</label></td>
                			</tr>
                			<tr>
								<td colspan="100%"><input type="button" value="Submit"></td>
							</tr>
                		</table>
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
