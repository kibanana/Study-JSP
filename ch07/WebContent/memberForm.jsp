<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function chk() {
		if(document.member.id.value==""){
			alert("id 를 입력해주세요");
			document.member.id.focus();
			return;
		}
		
		if(document.member.pwd.value==""){
			alert("pwd 를 입력해주세요");
			document.member.pwd.focus();
			return;
		}
		
		if(document.member.name.value==""){
			alert("이름 을 입력해주세요");
			document.member.name.focus();
			return;
		}
		
		document.member.submit();
	}
</script>

</head>
<body>

<pre>
	* JSP에서 기본으로 제공되는 내장객체는 9개 *
	
	- request, response, out
		: 입출력과 관련
	- session, application, pageContext
		: 현재 실행되는 외부환경 정보와 관련
	- page
		: jsp 페이지 그 자체를 의미
	- config
		: 서블릿을 초기화하는 동안 참조할 정보를 전해주는 역할
	- exception
		: 예외 객체
</pre>

<br>

<h3>내장 객체 - request, response</h3>
request를 처리해서 response에 html 형태로 담아 전달함
<br>
	<form name="frm_member" method="post" action="memberProc.jsp">
	
	아이디 : <input type="text" name="member_id" style="width: 70px">
	<br>
	비밀번호 <input type="password" name="member_pwd" style="width: 70px">
	<br>
	이름 : <input type="text" name="member_name" style="width: 70px">
	<br>
	직업 : 
	<select name="member_job">
		<option value="학생">학생</option>
		<option value="교사">교사</option>
		<option value="기타">기타</option>
	</select>
	
	<br>
	
	<input type="button" value="등록" onclick="chk()">
	<input type="reset" value="취소">
	
	</form>
</body>
</html>