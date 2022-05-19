<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
     <head>
     
     </head>
     
     <body>
     <%
     String id = request.getParameter("d");
     int no = Integer.parseInt(id);
     
     String url = "jdbc:mysql://localhost:3306/exam";
 	 String user = "root";
 	 String pass = "6674";
 	 
 	Class.forName("com.mysql.jdbc.Driver").newInstance();
	
	Connection cn = DriverManager.getConnection(url, user, pass);
	Statement st = cn.createStatement();
	
	String query = "delete from time where id = '"+no+"' ";
	
	st.executeUpdate(query);
	response.sendRedirect("TimeT.jsp");
     %>
     </body>
</html>
     