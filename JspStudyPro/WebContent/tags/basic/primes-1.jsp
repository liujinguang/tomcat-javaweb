<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="csajsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../JSP-Styles.css" type="text/css">
</head>
<body>
	<h1>Some N-Digit Primes</h1>
	<ul>
		<li><csajsp:prime2 length="20" />
		<li><csajsp:prime2 length="40" />
		<li><csajsp:prime2 length="60" />
		<li>Default (50-digit)<csajsp:prime2 />
	</ul>
</body>
</html>