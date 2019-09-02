<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="member" class="mirim.hs.kr.Member" />
<jsp:setProperty property="id" name="member" value="Kim" />
<jsp:setProperty property="pwd" name="member" value="1234" />
<jsp:setProperty property="name" name="member" value="Kim Yewon" />

<h2>액션 태그 이용</h2>
<jsp:getProperty property="id" name="member" />
<jsp:getProperty property="pwd" name="member" />
<jsp:getProperty property="name" name="member" />

<hr>

<h2>EL 이용</h2>
이름 : ${ member.name } <br>
ID : ${ member.id } <br>
PASSWORD : ${ member.pwd } <br>

<h2>EL에서 제공해주는 내장 객체</h2>

<pre>
- pageScope : page 객체를 참조하는 객체
- requestScope : request 객체를 참조하는 객체
- sessionScope : session 객체를 참조하는 객체
- applicationScope : application 객체를 참조하는 객체
- param : 요청 파라미터를 참조하는 객체
- paramValue : 요청 파라미터(배열)을 참조하는 객체
- initParam : 초기화 파라미터를 참조하는 객체
- cookie : cookie 객체를 참조하는 객체
</pre>

${ initParam.id }
${ initParam.pwd }
${ initParam.name }
</body>
</html>