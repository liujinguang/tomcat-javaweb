<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/csajsp-taglib.tld" prefix="csajsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Headings</title>
<link rel="stylesheet" href="../JSP-Styles.css" type="text/css">

</head>
<body>
Top of regular page. Blah, blah blah. Yadda, yadda, yadda.
<csajsp:debug>
    <h2>debug info</h2>
    ***************************<br>
    -Remote Host: ${pageContext.request.remoteHost} <br>
    -Sesssion ID: ${pageContext.session.id } <br>
    -${csajsp:info(pageContext.request) } <br>
    ***************************<br>
</csajsp:debug>
Bottom of regular page. Blah, blah, blah. Yadda, yadda, yadda
</body>
</html>