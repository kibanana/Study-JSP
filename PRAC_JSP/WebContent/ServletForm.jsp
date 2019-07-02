<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="servletProc" method="post">
이름 : <input type="text" name="name" size="10"> <br>
아이디 : <input type="text" name="id" size="10"> <br>
비밀번호 : <input type="password" name="pwd" size="10"> <br>
취미 : <input type="checkbox" name="hobby" value="read" size="10">독서 <br>
<input type="checkbox" name="hobby" value="run" size="10">조깅 <br>
<input type="checkbox" name="hobby" value="swim" size="10">수영 <br>
<input type="checkbox" name="hobby" value="sleep" size="10">낮잠 <br>

<input type="radio" name="major" value="kor">국어
<input type="radio" name="major" value="eng">영어
<input type="radio" name="major" value="mat">수학
<input type="radio" name="major" value="jsp" checked>웹프로그래밍

<br>
protocol
<select name="protocol">
	<option value="http">http</option>
	<option value="ftp">ftp</option>
	<option value="smtp">smtp</option>
	<option value="pop">pop</option>
</select>

<br>

<input type="submit" value="전송"> <!-- 유효성 체크 안하니까 그냥 submit -->
<input type="reset" value="초기화">
</form>

</body>
</html>