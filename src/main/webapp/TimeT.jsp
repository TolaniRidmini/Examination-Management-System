<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
background-image: url("img/iooi.jpg");
}
.main1{
    font-family:Arial;
    font-size:90px;
    color:#000000;
}
.topic{
background-color: #FFFFFF
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class = "topic">
<center><p class="main1">Time Table</p></center>
</div>

<table border = '0' align = 'center' width = '95%'>

<tr>
<td>
	<a href = "AddRow.jsp" ><button>Add new row</button></a>
	</td>
	
	<td align = "right">
	<form action = "TimeTServlet" method = "post">

	<input type = "text" name = "b" placeholder = "Enter your batch #" required>
	
	<input type = "submit" name = "submit" value = "search" >


</form>
</td>
</tr>
</table>
<br>
<table border = '1' align = 'center' width = '95%' bgcolor = "white">

		<tr align = 'center' >
			<th>Exam</th>
			<th>Batch</th>
			<th>Month</th>
			<th>Date</th>
			<th>Time</th>
			<th width = "12%">Operation</th>
		</tr>
			<%
			
			String url = "jdbc:mysql://localhost:3306/exam";
			String user = "root";
			String pass = "6674";
			
			try{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, user, pass);
				Statement stmt = con.createStatement();
				
				String sql = "select * from time";
				ResultSet rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					
					int id = rs.getInt("id");
					String ex = rs.getString("exm");
					String batch = rs.getString("batch");
					String y = rs.getString("year");
					String m = rs.getString("month");
					String d = rs.getString("day");
					
					
					%>
					<tr align = 'center' class="tr">
					<td class = "tt"><%= ex %></td>
					<td class = "tt"><%=batch %></td>
					<td class = "tt"><%=y %></td>
					<td class = "tt"><%=m %></td>
					<td class = "tt"><%=d %></td>
					
					<td>
						<a href = 'UdptT.jsp?id=<%= id %>&ex=<%= ex %>&b=<%= batch %>&m=<%= y %>&d=<%= m %>&t=<%= d %>'><button>Edit</button></a>
						&nbsp;
						<a href = 'DltT.jsp?d=<%= id %>'><button>Delete</button></a>
					</td>
	
					</tr>
					<%
				}
			}catch(Exception e){
				out.println(e.getMessage());
				e.printStackTrace();
			}
			%>
	</table>
	<br>

</body>
</html>