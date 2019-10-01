<%@page import="mirim.hs.kr.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="mirim.hs.kr.LogonDataBean"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<%
	member.setReg_date(new Timestamp(System.currentTimeMillis()));

	LogonDBBean logon = LogonDBBean.getInstance();
	logon.insertMember(member);
%>

<jsp:getProperty property="name" name="member"/> 님 회원가입을 축하합니다
</body>
</html>