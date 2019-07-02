<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String num = request.getParameter("num");
		String name = request.getParameter("name");

		request.setAttribute("myname", "Kim Yewon");
		request.setAttribute("yourname", "Kim SeonWu");
		request.setAttribute("ourname", "Kim Hayoung");
		
		String name1 = (String) request.getAttribute("myname");
		String name2 = (String) request.getAttribute("yourname");
		String name3 = (String) request.getAttribute("ourname");
		
		String grade = request.getParameter("grade");
		String subject = request.getParameter("subject");
		
		Enumeration<String> en = request.getParameterNames();
	%>
	
	학번 : <%=num %> <br>
	이름 : <%=name %> <br>
	이름 : <%=name1 %> <br>
	학년 : <%=grade %> <br>
	과목 : <%=subject %> <br>
	
	<%
		while(en.hasMoreElements()) {
			String key = (String)en.nextElement();
			String value = request.getParameter(key);
			out.println(key + " : " + value);
		}
	%>
	
	이름1 : <%=name1 %> <br>
	이름2 : <%=name2 %> <br>
	이름3 : <%=name3 %> <br>
	
	<%
		Enumeration<String> enName = request.getParameterNames();
		while(enName.hasMoreElements()) {
			String key = (String)enName.nextElement();
			String value = (String)request.getAttribute(key);
			out.println(key + " : " + value);
		}
	%>
</body>
</html>