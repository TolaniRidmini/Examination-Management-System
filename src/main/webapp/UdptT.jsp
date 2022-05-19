<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String id = request.getParameter("id");
String exm = request.getParameter("ex");
String ba = request.getParameter("b");
String m = request.getParameter("m");
String d = request.getParameter("d");
String t = request.getParameter("t");
%>

<form action = "UpdateTimeServlet" method = "post">


	<input type = "text" style="width: 315px;height:20px" name = "id" value = "<%= id %>" readonly><br><br>
	<input type = "text" style="width: 315px;height:20px" name = "ex" value = "<%= exm %>"><br><br>
	<input type = "text" style="width: 315px;height:20px" name = "b" value = "<%= ba %>"><br><br>
	<input type = "text" style="width: 100px;height:20px" name = "m" value = "<%= m %>">
	<input type = "text" style="width: 100px;height:20px" name = "d" value = "<%= d %>">
	<input type = "text" style="width: 100px;height:20px" name = "t" value = "<%= t %>"><br><br>
	<input type = "submit" class = "addn" style="width: 159px;height:20px" value = "Update" name = "submit">
</form>

</body>
</html>