<!DOCTYPE html>
<%@ page errorPage="error.jsp" %>
<html>
	<%!
		public void jspInit(){
			System.out.println("This is JSP init!");
		}
	
		public void jspDestroy(){
			System.out.println("This is JSP destroy!");
		}
	%>
	<head>
		<title>Hello</title>
	</head>
	<body>
		<% if (request.getParameter("name") == null){
			throw new RuntimeException("No Name");
		}
		%>
		<h1>Hello World! <%= request.getParameter("name")%></h1>
	</body>
</html>