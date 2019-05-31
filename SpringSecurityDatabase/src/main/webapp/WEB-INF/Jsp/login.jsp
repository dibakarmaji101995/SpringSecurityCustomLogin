<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Custom Login Page</title>
</head>
<body>
	<h3>Custom Login Page</h3>
	<%
	    String error = (String) request.getAttribute("error");
	    if (error != null && error.equals("true"))
	    {
	        out.println("<h4 style=\"color:red\">Invalid login credentials. Please try again!!</h4>");
	    }
	    
	    String logout = (String) request.getAttribute("logout");
	   
	    if (logout != null && logout.equals("true"))
	    {
	        out.println("<h4 style=\"color:green\">You have logged out successfully!!</h4>");
	    }
	     
	%>
	<form action="<c:url value='login' />" method='POST'>

		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td><input name="submit" type="submit" value="Login" /></td>
				<td><input name="reset" type="reset" /> <input type="hidden"
					name="${_csrf.parameterName}" value="${_csrf.token}" /></td>
			</tr>
		</table>

	</form>
</body>
</html>