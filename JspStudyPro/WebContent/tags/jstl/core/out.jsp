<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="<c:out>Tag"></c:out></title>
</head>
<body>
	<h1>
		<code>
			<c:out value="<c:out> Tag"></c:out>
		</code>
	</h1>
	<ul>
		<li>Subscription ID: <c:out value="${account}" default="none"></c:out>
	</ul>

</body>
</html>