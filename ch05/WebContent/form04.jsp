<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>권역을 선택하세요</h2>

<form action="proc04.jsp" method="post">
	<input type="radio" name="localNum" value="0">0 권역<br>
	<input type="radio" name="localNum" value="1">1 권역<br>
	<input type="radio" name="localNum" value="2">2 권역<br>
	<input type="radio" name="localNum" value="3">3 권역<br>
	<input type="radio" name="localNum" value="4">4 권역<br>
	<input type="radio" name="localNum" value="5">5 권역<br>
	<input type="radio" name="localNum" value="6" checked>6 권역<br>
	<input type="radio" name="localNum" value="7">7 권역<br>
	
	<input type="submit" value="입력완료">
</form>

</body>
</html>