<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입 폼</h1>
<form action="insertProc.jsp" method="post">
	이름 : <input type="text" name="name"><br>
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pwd"><br>
	비밀번호 확인 : <input type="password" name="pwd_ck"><br>
	주소 : <input type="text" name="add"><br>
	<input type="submit" value="회원가입">
</form>
</body>
</html>