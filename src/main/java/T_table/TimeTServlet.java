package T_table;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/TimeTServlet")
public class TimeTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String batch = request.getParameter("b");
		boolean tr;
		
		tr = TtableDBUtil.validate(batch);
		
		if(tr == true) {
			
			List<Timett> Tinfo = TtableDBUtil.getTimett(batch);
			request.setAttribute("info", Tinfo);

			RequestDispatcher dis = request.getRequestDispatcher("showTime.jsp");
			dis.forward(request, response);
		}
		else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Invalid');");
			out.println("location = 'TimeT.jsp'");
			out.println("</script>");
			
		}
		
		
	}

}
