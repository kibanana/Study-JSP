<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="EL_Proc.jsp" method="post">
id : <input type="text" name="id"> <br>
pwd : <input type="password" name="pwd"> <br>
<input type="submit" value="로그인">

<%
	application.setAttribute("application_Key", "application_Value");
	session.setAttribute("session_Key", "session_Value");
	pageContext.setAttribute("pageContext_Key", "pageContext_Value");
	request.setAttribute("request_Key", "request_Value");
%>
</form>
</body>
</html>