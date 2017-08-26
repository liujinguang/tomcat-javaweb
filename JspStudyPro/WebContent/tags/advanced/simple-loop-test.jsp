<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/csajsp-taglib-adv.tld" prefix="csajsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple Loop Test</title>
<link rel="stylesheet" href="../../JSP-Styles.css" type="text/css">
</head>
<body>
	<h1>Simple Loop Test</h1>
	<p>
	<ul>
	   <csajsp:for count="<%=(int)(Math.random() * 10) %>">
	       <li>Blah
	   </csajsp:for>
	</ul>
	<h2>Some coin flips</h2>
	<ul>
	   <csajsp:for count="<%=(int)(Math.random() * 10) %>">
	       <li>${coin.flip}
	   </csajsp:for>
	</ul>
	
</body>
</html>