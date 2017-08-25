<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="<c:set>, <c:remove> tags"></c:out></title>
</head>
<body>
	<h1>
		<code>
			<c:out value="<c:set>, <c:remove> tags"></c:out>
		</code>
	</h1>
	<c:set var="map" value="<%=new HashMap()%>"></c:set>
	<c:set target="${map}" property="partialTitle"
		value="<read-it>core</read-it>"></c:set>
	<c:set target="${map}" property="fullTitle">
		<c:out value="${map.partialTitle}"/>
			<br>Servlets and JSP volume 2
	</c:set>
	<p>
	<h1>${map.fullTitle}</h1>
	<p>

		<c:set var="authors" value="Marty Hall, Larry Brown, Yaakov Chaikin"
			scope="request"></c:set>
		<c:set var="authors">Authors</c:set>
	<h1>${authors}:${requestScope.authors}</h1>
	<c:remove var="authors" scope="page" />
	<h1>${authors}:${requestScope.authors}</h1>
</body>
</html>