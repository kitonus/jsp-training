<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
           uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="h" uri="/WEB-INF/tld/hello.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Workspace</title>
</head>
<body>
	<h1>${message}</h1>
	<h2><%=request.getAttribute("message") %></h2>
	
	<p>Transaction:</p>
	<ul>
		<li>ID: ${trx.trxId}</li>
		<li>type: ${trx.trxType }</li>
		<c:if test="${trx.amount > 100000000 }">
		<li>amount (Mahal): <fmt:formatNumber value="${trx.amount }" pattern="0,000.00"/></li>
		</c:if>
		<c:if test="${trx.amount <= 100000000 }">
		<li>amount (Murah): <fmt:formatNumber value="${trx.amount }" pattern="0,000.00"/></li>
		</c:if>
		<li>time: <fmt:formatDate value="${trx.trxTimestamp }" pattern="dd-MMM-yyyy"/></li>
	</ul>
	
	<p><h:Hello/></p>
</body>
</html>