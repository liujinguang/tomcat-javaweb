<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Access bean properties</title>
<link rel="stylesheet" href="/JSPBasicProject/JSP-Styles.css"
    type="text/css">
</head>
<body>
    <table border="5">
        <tr>
            <th class="TITLE">Access bean properties
    </table>
    <p>
    <ul>
        <li><b>First Name:</b> ${employee.name.firstName}
        <li><b>Second Name:</b> ${employee.name.lastName}
        <li><b>Company Name:</b> ${employee.company.companyName}
        <li><b>Company Business:</b> ${employee.company.business}
    </ul>
</body>
</html>