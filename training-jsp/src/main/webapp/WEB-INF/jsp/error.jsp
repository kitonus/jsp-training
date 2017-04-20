<%@ page isErrorPage="true" %>
<html>
<head>
	<title>Error Page</title>
</head>
<body>
	<p>Error page: <%= exception.getMessage() %></p>
	<ul>
		<li>Caller: <%= request.getRemoteHost() %></li>
		<li>SessionID: <%= session.getId() %></li>
	</ul>
</body>
</html>
