<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Workspace</title>
</head>
<body>
	<h1>${message}</h1>
	<h2><%=request.getAttribute("message") %></h2>
	
	<jsp:useBean id="aBean" scope="request" class="com.indivaragroup.training.jsp.model.ABean"/>
	<jsp:setProperty property="name" name="aBean" value="Budi"/>
	
	<p>My name is ${aBean.name}</p>
</body>
</html>