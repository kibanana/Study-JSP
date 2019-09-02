<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="mirim.hs.kr.MemberInfo" scope="request" />

<jsp:setProperty property="id" name="member" value="Rye" />
<%= member.getName() %>(<%= member.getId() %>) 회원님 안녕하세요
</body>
</html>