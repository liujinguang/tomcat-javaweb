<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Marty playing with snakes</title>
</head>
<body>
	<c:import url="marty-with-snake.html" var="martyWithSnake"></c:import>
	<table align="center">
		<tr>
			<td colspan="2" align="center">Travels to Far East</td>
		</tr>
		<tr>
			<td><c:import url="snake.html"></c:import></td>
			<td>${martyWithSnake}</td>
		</tr>
	</table>
</body>
</html>