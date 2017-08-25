<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="<c:choose>, <c:when>, <c:otherwise> Tags"></c:out></title>
</head>
<body>
	<h1>
		<code>
			<c:out value="<c:choose>, <c:when>, <c:otherwise> Tags"></c:out>
		</code>
	</h1>
	<ul>
		<c:forEach var="i" begin="1" end="10">
			<li>i=${i} 
			    <c:choose>
					<c:when test="${i < 3}">(less than 3)</c:when>
					<c:when test="${i < 5}">(less than 5)</c:when>
					<c:when test="${i == 5}">(It's 5! So exciting!)</c:when>
					<c:otherwise>(greater than 5)</c:otherwise>
				</c:choose>
			</li>
		</c:forEach>
	</ul>
</body>
</html>