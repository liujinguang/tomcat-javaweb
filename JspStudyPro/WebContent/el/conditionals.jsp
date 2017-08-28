<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Conditional Evaluation</title>
<link rel="stylesheet" href="../JSP-Styles.css" type="text/css">
</head>
<body>
	<table border="5" align="center">
		<tr>
			<th class="TITLE">Conditional Evaluation
	</table>

	<p>
	<table border=1 align="center">
		<tr>
			<th></th>
			<th class="COLORED">Apples</th>
			<th class="COLORED">Oranges</th>
		</tr>
		<tr>
			<th class="COLORED">First Quarter</th>
			<td align="right">${apples.q1}</td>
			<td align="right">${oranges.q1}</td>
		</tr>

		<tr>
			<th class="COLORED">Second Quarter</th>
			<td align="right">${apples.q2}</td>
			<td align="right">${oranges.q2}</td>
		</tr>

		<tr>
			<th class="COLORED">Third Quarter</th>
			<td align="right">${apples.q3}</td>
			<td align="right">${oranges.q3}</td>
		</tr>

		<tr>
			<th class="COLORED">Fourth Quarter</th>
			<td align="right">${apples.q4}</td>
			<td align="right">${oranges.q4}</td>
		</tr>

		<tr>
			<th class="COLORED">Total</th>
			<td align="right" bgcolor=${apples.total < 0 ? "red" : "white"}>${apples.total}</td>
			<td align="right" bgcolor=${oranges.total < 0 ? "red" : "white"}>${oranges.total}</td>
		</tr>
	</table>
</body>
</html>