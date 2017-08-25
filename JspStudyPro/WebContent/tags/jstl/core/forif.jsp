<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="<c:if> Tags"></c:out></title>
</head>
<body>
    <h1><code><c:out value="<c:if> Tag"></c:out></code></h1>
    <ul>
        <c:forEach var="i" begin="1" end="10" step="2">
            <li>
                i = ${i}
                <c:if test="${ i > 3 }">(greater than 3)</c:if>
            </li>
        </c:forEach>
    </ul>
</body>
</html>