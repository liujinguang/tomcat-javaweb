<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/csajsp-taglib-adv.tld" prefix="csajsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>If Test</title>
<link rel="stylesheet" href="../JSP-Styles.css" type="text/css">

</head>
<body>
    <h2>SSL Usage</h2>
    <csajsp:if test="${pageContext.request.protocol==https }">
        <csajsp:then>Using SSL.</csajsp:then>
        <csajsp:else>Not using SSL.</csajsp:else>
    </csajsp:if>
    <p>
    
    <h2>Coin Tosses</h2>
    <ul>
        <csajsp:for count="5">
            <li><csajsp:if test="<%=Math.random() < 0.5 %>">
                <csajsp:then>Heads</csajsp:then>
                <csajsp:else>Tails</csajsp:else>
            </csajsp:if>
        </csajsp:for>
    </ul>
</body>
</html>