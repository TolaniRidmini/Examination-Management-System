package T_table;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class TtableDBUtil {
	
private static boolean rtn;

	
public static boolean validate(String batch) {
	
	String url = "jdbc:mysql://localhost:3306/exam";
	String user = "root";
	String pass = "6674";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection cn = DriverManager.getConnection(url, user, pass);
		Statement st = cn.createStatement();
		
		String query = "select * from time where batch = '"+batch+"'";
		
		ResultSet rs = st.executeQuery(query);
		
		if(rs.next()) {
			rtn = true;
		}
		else {
			rtn = false;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	return rtn;
}
	
public static List<Timett> getTimett(String batch){
		
		ArrayList<Timett> rslt = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/exam";
		String user = "root";
		String pass = "6674";
		
		
		//validate
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from time where batch = '"+batch+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String ex = rs.getString(2);
				String ba = rs.getString(3);
				String m = rs.getString(4);
				String d = rs.getString(5);
				String t = rs.getString(6);
				
				Timett r = new Timett(id, ex, ba, m, d, t);
				rslt.add(r);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rslt;
		
	}


public static boolean updateTime(String id, String ex, String b, String m, String d, String t) {
	
	String url = "jdbc:mysql://localhost:3306/exam";
	String user = "root";
	String pass = "6674";
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection cn = DriverManager.getConnection(url, user, pass);
			Statement st = cn.createStatement();
			
			String query = "update time set exm = '"+ex+"' , batch = '"+b+"' , year = '"+m+"' , month = '"+d+"' , day = '"+t+"'"
					+ "where id = '"+id+"' ";
			
			int rs = st.executeUpdate(query);
			
			if(rs > 0) {
				rtn = true;
			}
			else {
				rtn = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	
	return rtn;
}

public static boolean addTime(String ex, String b, String m, String d, String t) {
	// TODO Auto-generated method stub
boolean rtn2 = false;
	
	String url = "jdbc:mysql://localhost:3306/exam";
	String user = "root";
	String pass = "6674";
	

	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection cn = DriverManager.getConnection(url, user, pass);
		Statement st = cn.createStatement();
		
		String query = "insert into time values (0, '"+ex+"', '"+b+"', '"+m+"', '"+d+"', '"+t+"') ";
		
		int rs = st.executeUpdate(query);
		
		if(rs > 0) {
			rtn2 = true;
		}
		else {
			rtn2 = false;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	
	
	 return rtn2;
}



}
