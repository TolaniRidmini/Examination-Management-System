package T_table;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateTimeServlet")
public class UpdateTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String ex = request.getParameter("ex");
		String b = request.getParameter("b");
		String m = request.getParameter("m");
		String d = request.getParameter("d");
		String t = request.getParameter("t");
		
		boolean tru;
		
		tru = TtableDBUtil.updateTime(id, ex, b, m, d, t);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		if(tru == true) {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Done!!!');");
			out.println("location = 'TimeT.jsp'");
			out.println("</script>");
			
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Error!!!');");
			out.println("location = 'TimeT.jsp'");
			out.println("</script>");
		}
	}

}
