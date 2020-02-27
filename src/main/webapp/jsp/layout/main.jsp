<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
  <title>Raahi</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  
  <link href="/bootstrap.min.css" rel="stylesheet">
  <link rel="apple-touch-icon" sizes="76x76" href="./resources/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./resources/img/R.png"> 
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link href="./resources/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
  <script src="/jquery-2.2.1.min.js"></script>
  <script src="/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="./resources/js/core/popper.min.js"></script>
  <script src="./resources/js/core/bootstrap-material-design.min.js"></script>
  <script src="./resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="./resources/js/plugins/moment.min.js"></script>
  <script src="./resources/js/plugins/sweetalert2.js"></script>
  <script src="./resources/js/plugins/jquery.validate.min.js"></script>
  <script src="./resources/js/plugins/jquery.bootstrap-wizard.js"></script>
  <script src="./resources/js/plugins/bootstrap-selectpicker.js"></script>
  <script src="./resources/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <script src="./resources/js/plugins/jquery.dataTables.min.js"></script>
  <script src="./resources/js/plugins/bootstrap-tagsinput.js"></script>
  <script src="./resources/js/plugins/jasny-bootstrap.min.js"></script>
  <script src="./resources/js/plugins/fullcalendar.min.js"></script>
  <script src="./resources/js/plugins/jquery-jvectormap.js"></script>
  <script src="./resources/js/plugins/nouislider.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <script src="./resources/js/plugins/arrive.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <script src="./resources/js/plugins/chartist.min.js"></script>
  <script src="./resources/js/plugins/bootstrap-notify.js"></script>
  <script src="./resources/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
</head>
<body>
	  <div class="wrapper">
  		<div class="main-panel">
			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="body" />
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>