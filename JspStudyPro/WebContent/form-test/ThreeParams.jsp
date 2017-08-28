<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reading Three Request Parameters</title>
<link rel="stylesheet" href="../JSP-Styles.css" type="text/css">
</head>
<body>
	<h1>Reading Three Request Parameters</h1>
	<ul>
		<li><b>Param1:</b> <%=request.getParameter("param1")%></li>
		<li><b>Param2:</b> <%=request.getParameter("param2")%></li>
		<li><b>Param3:</b> <%=request.getParameter("param3")%></li>
	</ul>
</body>
</html>