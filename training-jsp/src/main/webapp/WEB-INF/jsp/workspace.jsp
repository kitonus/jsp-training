<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Workspace</title>
</head>
<body>
	<h1>${message}</h1>
	<h2><%=request.getAttribute("message") %></h2>
	
	<p>My name from request: <%= request.getParameter("myname") %></p>
	<p>My name from session: <%= session.getAttribute("currentName") %></p>
	<% 
	if ( pageContext.getAttribute("random", PageContext.PAGE_SCOPE) == null){ 
		pageContext.setAttribute("random", Math.random(), PageContext.PAGE_SCOPE);
	}
	%>
	<p>Random is: <%= pageContext.getAttribute("random", PageContext.PAGE_SCOPE) %></p>
	
	<form action="<%= request.getContextPath() %>/our_app/details">
		<input type="submit" value="Details"/>
	</form>
</body>
</html>