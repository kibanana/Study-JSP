<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
폼에 데이터를 입력한후 [전송] 버튼을 클릭하세요
<br>

<form method="post" action="viewProc.jsp">
	이름 : <input type="text" name="name" style="width: 70px">
	<br>
	주소 : <input type="text" name="address" style="width: 70px">
	<br>
	좋아하는 동물 : 
		<input type="checkbox" name="pet" value="dog">강아지
		<input type="checkbox" name="pet" value="cat">고양이
		<input type="checkbox" name="pet" value="horse">말
		<input type="checkbox" name="pet" value="snake">뱀
	<br>
	<input type="submit" value="전송">
</form>
</body>
</html>