<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel=stylesheet type="text/css" href="cssExe.css">
<script language="javascript">

	function chk() {
		if(document.frm01.id.value=="") {
			alert("아이디를 입력해주세요");
			document.frm01.id.focus();
			return;
		}
		if(document.frm01.pw.value=="") {
			alert("비밀번호를 입력해주세요");
			document.frm01.pw.focus();
			return;
		}	
		
		alert("아이디 : " + document.frm01.id.value + "    " +
                                    "비밀번호 : " + document.frm01.pw.value)	
	}

</script>

<title>JSP 연습</title>
</head>
<body>
<% String name = "Kim"; %>
<h1>방문해 주셔서 감사합니다.</h1>
<hr>
<form name="frm01">
아이디 : <input type="text" name="id" size="11" value="<%= name %>">
<br>
비밀번호 : <input type="password" name="pw" size="11">
<br>
<input type="button" value="로그인" onclick="chk()">
</form>
<hr>
<h3>즐거운 시간 되세요</h3>
</body>
</html>