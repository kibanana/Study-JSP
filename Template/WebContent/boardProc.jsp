<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
</head>
<body>
	<h2>글쓰기</h2>
	
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" size="20"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<textarea rows="10" cols="40"></textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="right">
				글 작성
			</td>
			<td><input type="submit" value="글작성"></td>
		</tr>
	</table>
</body>
</html>