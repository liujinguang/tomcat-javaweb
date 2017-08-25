<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test foreach and forTokens tags</title>
</head>
<body>
	<h1>
		<code>
			<c:out value="<c:foreach /> tag"></c:out>
		</code>
	</h1>
	<table>
		<tr>
			<td><ul>
					<c:forEach var="i" begin="1" end="10" step="2">
						<li>i = ${i}</li>
					</c:forEach>
				</ul></td>
			<td>
				<%
					List<String> list = new ArrayList<String>();
					list.add("One");
					list.add("Two");
					list.add("Three");
					list.add("Four");
					list.add("Five");
					request.setAttribute("list", list);
				%>
				<ul>
					<c:forEach var="item" items="${list}">
						<li>${item}</li>
					</c:forEach>
				</ul>
			</td>
			<td>
				<ul>
					<c:forTokens var="item" items="<Once) Upon, A(Time%There...>" delims=")%<,(>" >
                        <li>${item}</li>
					</c:forTokens>
				</ul>
			</td>
		</tr>
	</table>
</body>
</html>