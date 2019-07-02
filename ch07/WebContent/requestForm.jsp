<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Form - 학번, 이름, 학년, 선택과목</h2>
<form method="post" action="requestProc.jsp">
학번 : <input type="text" name="num"> <br>
이름 : <input type="text" name="name"> <br>
학년
<input type="radio" name="grade" value="1" checked="checked">1학년
<input type="radio" name="grade" value="2">2학년
<input type="radio" name="grade" value="3">3학년
<input type="radio" name="grade" value="3">4학년
<br>
선택과목
<select name="subject">
	<option value="Java">Java</option>
	<option value="C lang">C lang</option>
	<option value="Go lang">Go lang</option>
	<option value="Python">Python</option>
</select>
<input type="submit">
</form>

</body>
</html>