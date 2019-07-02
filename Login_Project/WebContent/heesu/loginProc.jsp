<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
%>

<%-- DB 작업 --%>

<%-- 
ID : <%= id%> <br>
p/w : <%= pw%> <br>
--%>

<%-- 
<%
	if(id.equals("choi")){
		if(pw.equals("1234")){
			out.println("[로그인성공]");
		}
		else{
			out.println("[패스워드 확인]");
		}

	}
	else{
		out.println("[ID/패스워드 확인]");
	}
%>
--%>

<%
	if(id.equals("choi")){
		if(pw.equals("1234")){ %>
			<jsp:forward page="loginOK.jsp"/>
<% 		}
		else{ %>
			<jsp:forward page="login.jsp"/>
<%		}

	}
	else{ %>
		<jsp:forward page="insert.jsp"/>
<%	} %>