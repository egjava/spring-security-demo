<%@ taglib prefix= "form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix= "security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Security</title>
</head>
<body>

<h2>Heyy!!!! Spring Security</h2>

<p>
User: <security:authentication property="principal.username" />
<br><br>
</p>
<p>
Role(s): <security:authentication property="principal.authorities" />
</p>
<hr>
	<security:authorize access="hasRole('MANAGER')">
		<a href="${pageContext.request.contextPath}/leaders">Leadership Message</a>
		<br>
	</security:authorize>
	<security:authorize access="hasRole('ADMIN')">
		<a href="${pageContext.request.contextPath}/systems">Admin Message</a>
		<br>
	</security:authorize>
	
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	<input type='submit' value='Logout'/>
</form:form>
</body>
</html>