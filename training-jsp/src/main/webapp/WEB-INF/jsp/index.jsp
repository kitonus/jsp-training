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
		<%
		session.invalidate();//invalidates session
		%>
		<h1>Hello World!</h1>
		<form action="<%= request.getContextPath()%>/our_app/workspace">
			<input type="text" name="myname" 
			value="<%= request.getParameter("name") == null ? "" : request.getParameter("name")%>"/>
			<input type="submit" value="Enter!"/>
		</form>
	</body>
</html>