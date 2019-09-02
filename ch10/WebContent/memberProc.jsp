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
	// String id = request.getParameter("id");
	// String name = request.getParameter("name");
%>

<jsp:useBean id="test" class="mirim.hs.kr.TestBean" />

<!-- 
<jsp:setProperty name="test" property="*"/>
-->

<jsp:setProperty name="test" property="name" value=""/>
 
<jsp:setProperty name="test" property="name" value=""/>

<!-- 
<jsp:setProperty name="test" property="id"/>
<jsp:setProperty name="test" property="name"/>
-->
 
ID : <%=test.getId() %>
<br>
이름 : <jsp:getProperty name="test" property="name"/>
</body>
</html>