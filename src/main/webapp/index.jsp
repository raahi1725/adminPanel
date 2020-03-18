<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Log in with your account</title>
<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script>
function resetForm() {
	document.getElementById("username").value="";
	document.getElementById("password").value="";
}	

</script>
</head>

<body>
   <div class="loginBox">
      <form method="POST" action="${contextPath}/login">
        <div class="form-group ${error != null ? 'has-error' : ''}">
        	<table>
        		<tr>
	  				<td colspan="2" style="text-align: center;">
	  					<img src="${contextPath}/resources/img/logo.png" alt="TestHut" style="width: 180px;">
	  				</td>
	  			</tr>
        		<tr>
        			<td colspan="2">
        				<span>${message}</span>
        			</td>
        		</tr>
        		<tr>
        			<td>
        			 	<b>UserName : </b>
        			</td>
        			<td>
        				<input name="username" id="username" type="text" class="form-control" placeholder="Username"/>
        			</td>
        		</tr>
        		<tr>
        			<td>
        			 	<b>Password : </b>
        			</td>
        			<td>
        				<input name="password" id="password" type="password" class="form-control" placeholder="Password" />
        			</td>
        		</tr>
        		<tr>
        			<td colspan="2">
        				 <span>${error}</span>
        				  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        			</td>
        		</tr>
        		<tr><td>&nbsp;</td></tr>
        		<tr>
        			<td colspan="2" style="text-align: center;">
        				<button type="submit" >Log In</button>
        			</td>
        		</tr>
        		<tr><td>&nbsp;</td></tr>
        		<tr>
	        		<td>
	        			<label><input type="checkbox" checked="checked" name="remember"> Remember me</label>
	        		</td>
        		</tr>
        		<tr><td>&nbsp;</td></tr>
        		<tr>
        			<td>
        				<button type="button" onclick="resetForm();" class="cancelbtn">Reset</button>
        			</td>
        			<td>
        				<span class="psw">Forgot <a href="#">password?</a></span>
        			</td>
        		</tr>
        	</table>
        </div>
      </form>
    </div>

  </body>
</html>
