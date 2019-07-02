<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
%>

<%-- DB 작업 --%>

<%--

<%
	if(id.equals("choi")){
		if(pwd.equals("1234")){
		
		}
		else {
			out.println("[패스워드 확인]");
		}
	} else {
		out.println("[ID/패스워드 확인]");
	}
%>

--%>

<%
	if(id.equals("choi")){
		if(pwd.equals("1234")){
		%>
			<jsp:forward page="Login_OK.jsp" />
		<%
		}
		else {
			%>
			<jsp:forward page="Login.jsp" />
			<%
		}
	} else {
		%>
		<jsp:forward page="insert.jsp" />
		<%
	}
%>