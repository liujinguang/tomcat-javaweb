<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 核心警告： 避免将c:catch标签用于调试或实验之外的任何地方。异常处理应该是业务逻辑代码的事情，而不是JSP -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="<c:catch> tag"></c:out></title>
</head>
<body>
	<h1>
		<code>
			<c:out value="<c:catch> tag"></c:out>
		</code>
	</h1>
	<h3>Before illegal operation</h3>
	<c:catch var="myException" >
	   <% int x = 1/0; %>
	</c:catch>
	<h3>After illegal operation</h3>
	Exception message: ${myException.message }
</body>
</html>