<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	//DB 로직 구현
	
	if(id.equals("choi")) { //회원
		if(pwd.equals("1234")) { %>
			<jsp:forward page="loginOK.jsp" />
		<%
		} else { %>
			<jsp:forward page="login.jsp" />
		<%
		}
		
	} //else if(id.equals("admin")) //관리자 계정
	else { //비회원 %>
		<jsp:forward page="insert.jsp" />	
	<%
	}
%>