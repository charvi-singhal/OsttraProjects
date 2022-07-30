<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
</head>
<body>	
	<div class="container mt-5">
		<div class="row">
			<div class="card text-center col-6">
				 	<div class="card-header">
				    	<h3 class="text-danger">Registration Here</h3>
				  	</div>
				<form action="saveRegisterData.jsp" method="get">
				  
				  	<br/>
 						 <input type="text" class="form-control" name="name" placeholder="Enter your name"><br/>
  						<input type="email" class="form-control" name="email_id" placeholder="Enter your email"><br/>
						<input type="password" class="form-control" name="password" placeholder="Enter your password"><br/>
						 <input type="text" class="form-control" name="city" placeholder="Enter your city"> <br/>
				  
				  
				   	<input type="submit" value="Register" class="form-control btn-danger">
				
				</form>
				<a href="index.jsp" style="text-decoration: none;">Login Here</a>
				 <br/>
			</div>
			
		</div>
	</div>
	
</body>
</html>