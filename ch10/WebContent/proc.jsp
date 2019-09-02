<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<jsp:useBean id="member" class="mirim.hs.kr.MemberInfo" />
<jsp:setProperty property="*" name="member"/>
<%-- <jsp:setProperty property="name" name="member"/>
<jsp:setProperty property="address" name="member"/>
<jsp:setProperty property="" name="member"/> --%>
<jsp:setProperty property="password" name="member" value="asdf1234"/>

<table border="1">
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="member" property="id" /></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><jsp:getProperty name="member" property="password" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="member" property="name" /></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><jsp:getProperty name="member" property="address" /></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><jsp:getProperty name="member" property="email" /></td>
	</tr>
</table>
</body>
</html>