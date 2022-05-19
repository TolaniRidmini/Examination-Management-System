<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br><br>
<table border = "1" align = "center" width = "30%">
<tr>
<td>
<ul>
<c:forEach var="rs" items="${info}">
	
		<br>
		<br>
		<li>Exam = ${rs.ex}</li>
		<br>
		<br>
		<li>Batch = ${rs.b}</li>
		<br>
		<br>
		<li>Date = ${rs.d} of ${rs.m}</li>
		<br>
		<br>
		<li>Time = ${rs.t}</li>
		<br>
		<br>
	
	</c:forEach>
</ul>
</td>
</tr>
</table>

</body>
</html>