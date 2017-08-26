<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/csajsp-taglib-adv.tld" prefix="csajsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recent World Records</title>
<link rel="stylesheet" href="../../JSP-Styles.css" type="text/css">
</head>
<body>
	<h1>Recent World Records</h1>
	Following are the three most recent swimming world records, as listed
	in the FINA database.
	<p>
	<csajsp:makeTable rowItems="${records}" headerClass="colored"></csajsp:makeTable>
	

</body>
</html>