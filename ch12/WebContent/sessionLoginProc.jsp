<%@page import="mirim.hs.kr.LogonDBBean"%>
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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	System.out.println(id);
	System.out.println(pwd);
%>

<%
	LogonDBBean logon = LogonDBBean.getInstance();
	
	int check = logon.userCheck(id, pwd);
	
	if(check == 1) {
		session.setAttribute("id", id);
		response.sendRedirect("sessionMain.jsp");
	} else if (check == 0) { %>
		<script>
			alert("비밀번호를 확인해주세요!");
			history.go(-1);
		</script>
	<%
		response.sendRedirect("sessionLoginForm.jsp");
	} else if (check == -1) {
		response.sendRedirect("insertMemberForm.jsp");
	}
%>
</body>
</html>