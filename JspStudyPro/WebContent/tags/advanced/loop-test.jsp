<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/csajsp-taglib-adv.tld" prefix="csajsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loop Test</title>
<link rel="stylesheet" href="../../JSP-Styles.css" type="text/css">
</head>
<body>
	<h1>Loop Test</h1>
	<p>
	<h2>Some Java-Based Servers</h2>
	<ul>
		<csajsp:forEach items="${servers}" var="server">
			<li>${server }
		</csajsp:forEach>
	</ul>
	<h2>Recent World Records</h2>
	<table border="2">
	   <csajsp:forEach items="${records }" var="row">
	       <tr>
	           <csajsp:forEach items="${row }" var="col">
	               <td>${col }</td>
	           </csajsp:forEach>
	       </tr>
	   </csajsp:forEach>
	</table>

</body>
</html>