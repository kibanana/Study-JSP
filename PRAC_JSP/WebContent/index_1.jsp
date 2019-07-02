<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>JSP 연습</title>
<meta charset="utf-8">
<style>
	h1 {
		font-family: 굴림체;
		color: red;
	}
	
	h3 {
		font-family: 굴림체;
		color: pink;
	}
</style>
<script language="javascript">
	function signin_chk() {
		if(document.frm01.id.value=="") {
			alert("아이디를 입력해주세요");
			document.frm01.id.focus();
			return;
		} else if(document.frm01.pwd.value=="") {
			alert("비밀번호를 입력해주세요");
			document.frm01.pwd.focus();
			return;
		}
		
		alert("아이디 : " + document.frm01.id.value + "  " +
			"비밀번호 : " +  document.frm01.pwd.value);
	}
</script>
<link rel="stylesheet" href="css.css">
</head>
<body>
<h1>방문해주셔서 감사합니다</h1>
<hr>
<form name="frm01">
<label>
아이디
<input type="text" id="id" size="11">
</label>
<br>
<label>
비밀번호
<input type="password" id="pwd" size="11">
<br>
<input type="button" value="로그인" onclick="signin_chk()">
<hr>
<h3>즐거운 시간 되세요</h3>
</form>
</body>
</html>