<%@page import="mirim.hs.kr.TestBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <%
	TestBean test = new TestBean();
	test.setName("홍길동");
	
	out.println(test.getName());
%> --%>

<jsp:useBean id="test" class="mirim.hs.kr.TestBean" scope="request" />

<jsp:setProperty name="test" property="name" value="홍길동" />

<jsp:getProperty name="test" property="name" />

<jsp:forward page="study_02.jsp" />

</body>
</html>