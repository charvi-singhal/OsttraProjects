<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment-4</title>
</head>
<body>
	<h3>Calculator</h3>
	<form action="output.jsp" method="post">
		<table>
			<tr>
				<td>Enter first number: </td>
				<td><input type="text" name="firstNumber"/></td>
			</tr>
			<tr>
				<td>Enter second number: </td>
				<td><input type="text" name="secondNumber"/></td>
			</tr>
			<tr>
				<td colspan="2">
					+<input type="radio" value="+" name="operation"  required="required"/>
					-<input type="radio" value="-" name="operation"  required="required"/>
					*<input type="radio" value="*" name="operation"  required="required"/>
					/<input type="radio" value="/" name="operation"  required="required"/>
				</td>
			</tr>
		</table>
		<input type="submit" value="Calculate" />
	</form>
</body>
</html>