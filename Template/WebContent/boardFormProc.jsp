<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 입력 폼</title>
</head>
<body>
<h2>글쓰기</h2>

<form action="boardProc2.jsp" method="post">
이름 : <input type="text" name="name"> <br>
제목 : <input type="text" name="title"> <br>
<textarea rows="10" cols="48" name="content"></textarea>
<input type="submit" value="입력">

</form>
</body>
</html>