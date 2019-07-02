import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletProc
 */
@WebServlet("/servletProc")
public class servletProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletProc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		System.out.println("doGet() �޼ҵ� ȣ��"); //consoleâ�� ����
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
//		System.out.println("doPost() �޼ҵ� ȣ��");

	    request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    
	    String name = request.getParameter("name");
	    String id = request.getParameter("id");
	    String pwd = request.getParameter("pwd");
	    String[] hobby = request.getParameterValues("hobby");
	    String major = request.getParameter("major");
	    String protocol = request.getParameter("protocol");
	
	    PrintWriter out = response.getWriter();
	    out.println("<html><head></head>");
	    out.println("<body>");
	    out.println("이름 : " + name + "<br>");
	    out.println("id : " + id + "<br>");
	    out.println("password : " + pwd + "<br>");
	    
	    out.println("취미 : "+ Arrays.toString(hobby)+ "<br>");

	    out.println("전공 : " + major + "<br>");
	    out.println("프로토콜 : " + protocol + "<br>");
	    
	    out.println("</body>");
	    out.println("</html>");
	}

}
