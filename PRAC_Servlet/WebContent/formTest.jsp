
<%@ page 
	language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<h2>개인 정보 입력</h2>

<form action="Proc.jsp" method="post">
	이름 : <input type="text" name="name"> <br>
	ID : <input type="text" name="id"> <br>
	PW : <input type="password" name="pw"> <br>
	성별 : 
		남<input type="radio" name="gen" value="M">
		여<input type="radio" name="gen" value="F" checked>
	<br>
	메일 수신 여부 :
	공지 메일<input type="checkbox" name="inotice">
	광고 메일<input type="checkbox" name="cnotice">
	배송 메일<input type="checkbox" name="dnotice">
	<br>
	
	영웅 :
	<select name="hero">
		<option>라인</option>
		<option>리퍼</option>
		<option>정크랫</option>
		<option>루시우</option>
		<option>아나</option>
	</select>
	<br>
	<input type="submit" value="확인">
	<input type="reset" value="취소">
</form>















