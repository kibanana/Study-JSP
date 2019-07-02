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
	String id = request.getParameter("member_id");
	String pwd = request.getParameter("member_pwd");
	String name = request.getParameter("member_name");
	String job = request.getParameter("member_job");
%>

아이디 : <%= id %>
<br>
비밀번호 : <%= pwd %>
<br>
이름 : <%= name %>
<br>
직업 : <%= job %>
<br>

<hr>

ip : <%= request.getRemoteAddr() %> <%-- ipv6 --%>
<br>
Browser : <%= request.getHeader("User-Agent") %>
<br>
Method : <%= request.getMethod() %>
<br>
서버의 버퍼 크기 : <%= response.getBufferSize() %>
<br>
문자셋 : <%= response.getCharacterEncoding() %>
</body>
</html>