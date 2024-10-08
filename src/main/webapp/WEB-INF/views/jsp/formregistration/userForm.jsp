<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h2>User Registration Form </h2>
	<mvc:form modelAttribute="user" action="register" method="post">
	    <table>
	        <tr>
	            <td>First Name (*)</td>
	            <td><mvc:input path="name" required="true" placeholder="First Name"/></td>
	        </tr>
	        <tr>
            	<td>Last Name (*)</td>
            	<td><mvc:input path="lastname" required="true" placeholder="Last Name"/></td>
            </tr>
            <tr>
            	<td>Password (*)</td>
            	<td><mvc:password path="password" required="true" placeholder="Password"/></td>
            </tr>
            <tr>
            	<td>Detail</td>
            	<td><mvc:textarea path="detail" placeholder="Detail Information"/></td>
            </tr>
            <tr>
            	<td>Birth Date</td>
            	<td><mvc:input path="birthDate" type="Date"/></td>
            </tr>
            <tr>
            	<td>Gender</td>
            	<td><mvc:radiobuttons path="gender" items="${genders}"/></td>
            </tr>
            <tr>
            	<td>Country</td>
            	<td><mvc:select path="country" items="${countries}"/></td>
            </tr>
            <tr>
            	<td>Non Smoking</td>
            	<td><mvc:checkbox path="nonSmoking" checked="true"/></td>
            </tr>
            <tr>
            	<td colspan="2">
            	    <input type="submit" value="Submit"/>
            	</td>
            </tr>
        </table>
    </mvc:form>
</body>
</html>