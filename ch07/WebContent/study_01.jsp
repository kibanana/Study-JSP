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
	out.println(application.getServerInfo());
	out.println(application.getRealPath("/study_01.jsp"));
	application.log("점심시간이 얼마 남지 않았다!");
%>

</body>
</html>