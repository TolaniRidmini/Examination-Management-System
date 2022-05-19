<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action = "AddRowtServlet" method = "post">

	<input type = "text" style="width: 315px;height:20px" name = "ex" placeholder = "Exam" required><br><br>
	<input type = "text" style="width: 315px;height:20px" name = "b" placeholder = "Batch" required><br><br>
	<input type = "text" style="width: 100px;height:20px" name = "m" placeholder = "Month" required><br><br>
	<input type = "text" style="width: 100px;height:20px" name = "d" placeholder = "Day" required><br><br>
	<input type = "text" style="width: 100px;height:20px" name = "t" placeholder = "Time" required><br><br>
	<input type = "submit" style="width: 320px;height:20px" value = "Add" name = "submit"><br><br>
	<input type = "reset"  style="width: 320px;height:20px" value = "Reset" name = "reset">
</form>
<br><br><br><br><br><br>

</body>
</html>