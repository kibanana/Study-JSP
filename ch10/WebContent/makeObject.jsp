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
<%
	member.setId("Hong");
%>
<jsp:setProperty property="name" value="홍길동" name="member"/>
<%-- 
<%
	member.getName();
%>
<jsp:getProperty property="name" name="member"/> 
--%>

<jsp:forward page="useObject.jsp" />
</body>
</html>