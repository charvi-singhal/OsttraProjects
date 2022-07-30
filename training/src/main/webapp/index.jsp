<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
</head>
<body>	
	<div class="container mt-5">
		<div class="row">
		<%
				  		if(session.getAttribute("userSaved")!=null){
				  			out.println(session.getAttribute("userSaved"));
				  			session.removeAttribute("userSaved");
				  		}
				  	%>
			<div class="card text-center col-6">
				 	<div class="card-header">
				    	<h3 class="text-danger">Login Here</h3>
				  	</div>
				  	
				<form action="logged.jsp" method="post">
				 <input type="email" class="form-control" name="email_id" placeholder="Enter your email"/>
				  <input type="password" class="form-control" name="password" placeholder=" Enter your Password"/>
					<br/>
				 
				   	<input type="submit" value="Login" class="form-control btn-danger">
				 
				</form>
				<a href="userRegistration.jsp" style="text-decoration: none;">Register Here</a>
				 <br/>
			</div>
			
		</div>
	</div>
	
</body>
</html>