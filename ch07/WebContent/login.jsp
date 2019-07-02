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

	String id = request.getParameter("id");
	
	if(id.equals("kim")) {
		response.sendRedirect("index.jsp?name='김예원'");
	} else {
		response.sendRedirect("error.jsp");
	}
%>

<br>

<%-- 아이디 : <%= id %> --%>
<br>


</body>
</html>