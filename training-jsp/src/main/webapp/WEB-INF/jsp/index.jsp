<!DOCTYPE html>
<html>
	<head>
		<title>Example of Comments, Scriplets, Expressions, Declarations</title>
	</head>
	<body>
		<%-- Example of scriptlets --%>
		<h1><% out.println("Hello World!"); %></h1>
		<h1><jsp:scriptlet>out.println("Alternative using XML: Hello World!");</jsp:scriptlet></h1>
		
		<%-- Example of expressions --%>
		<h2>Hello World! <%= request.getParameter("name") %></h1>
		<h3>This is XML equivalent: <jsp:expression>request.getParameter("name")</jsp:expression></h2>
		
		<%-- Example of declarations --%>
		<%! int i = 1, j = 2; %>
		<jsp:declaration>int k = 3;</jsp:declaration>
		
		<p><%= i %>+<%= j %>+<%= k %>=<%= i + j + k %></p>
		 
	</body>
</html>