<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="ExceptionHandler.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<jsp:useBean id="custBean" class="com.training.beans.Customer"
		scope="session" />

	<jsp:setProperty property="*" name="custBean" />
	Dear :
	<jsp:getProperty property="customerName" name="custBean" />
	thanks for Adding
	<a href="CreateError.jsp">Throw Exception</a>
	<br>Invoking Bean Method
	<br>
	<c:out value="${custBean.getInfo()}" />

</body>
</html>