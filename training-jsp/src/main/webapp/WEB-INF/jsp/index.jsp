<!DOCTYPE html>
<%-- These are directives --%>
<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" 
           uri="http://java.sun.com/jsp/jstl/fmt" %>
           
<%! 
public int sum(int i, int j, int k){
		return i+j+k;
}

public void jspInit(){
	System.out.println("JSP init is called!!!");
}
%>
<html>
	<head>
		<title>Example of Comments, Scriptlets, Expressions, Declarations</title>
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
		
		<p><%= i %>+<%= j %>+<%= k %>=<%= sum(i, j, k) %></p>
		
		<%-- These are examples of how to use custom tag directive above --%> 
		<c:set var="sum" value="2000"/>
		<f:formatNumber type="number" pattern="#0.00" value="${sum}"/>
	</body>
</html>