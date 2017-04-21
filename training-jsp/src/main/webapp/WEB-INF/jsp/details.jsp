<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
</head>
<body>
	<h1>This is Details</h1>
	<p>My name from request: <%=request.getParameter("myname") %></p>
	<p>My name from session: <%=session.getAttribute("currentName") %></p>
	<% 
	if ( pageContext.getAttribute("random") == null){ 
			pageContext.setAttribute("random", Math.random(), PageContext.PAGE_SCOPE);
	}
	%>
	<p>Random is: <%= pageContext.getAttribute("random") %></p>
	<form action="<%= request.getContextPath() %>/our_app/workspace">
		<input type="submit" value="Back"/>
	</form>
</body>
</html>