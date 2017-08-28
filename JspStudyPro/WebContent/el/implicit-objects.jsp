<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Using Implicit objects</title>
<link rel="stylesheet" href="../JSP-Styles.css" type="text/css">
</head>
<body>
	<table border="5">
		<tr>
			<th class="TITLE">Accessing Scoped Variables
	</table>

	<p>
	<ul>
		<li><b>Test request: Parameter:</b>${param.test}
		<li><b>User-agent header:</b> ${header["User-Agent"]}
		<li><b>JSESSIONID Cookie Value:</b> ${cookie.JSESSIONID.value}
		<li><b>Server:</b>${pageContext.servletContext.serverInfo}
	</ul>
</body>
</html>