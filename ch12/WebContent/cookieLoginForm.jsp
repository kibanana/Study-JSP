<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Login Form
<form action="cookieLoginProc.jsp" method="post">
	id : <input type="text" name="id"> <br>
	password : <input type="password" name="pwd"> <br>
	<input type="submit" value="로그인">
	<input type="button" value="회원가입" onClick="location.href=insertMemberForm.jsp">
</form>
</body>
</html>