

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servletProc")
public class servletProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public servletProc() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//System.out.println("doGet() 메소드 호출");
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		//System.out.println("doPost() 메소드 호출");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String hobby[] = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String protocol = request.getParameter("protocol");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<body>");
		out.println("이름 : " + name + "<br>");
		out.println("ID : " + id + "<br>");
		out.println("PW : " + pw + "<br>");
		out.println("취미 : " + Arrays.toString(hobby) + "<br>");
		out.println("과목 : " + major + "<br>");
		out.println("프로토콜 : " + protocol + "<br>");		
		out.println("</body>");
		out.println("</html>");
		
		
	}

}













