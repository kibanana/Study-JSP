<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>웹 브라우저에 저장된 쿠키를 가져오는 페이지</h2>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i = 0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("id")) { %>
				쿠키 존재. <%=cookies[i].getName() %>, <%=cookies[i].getValue() %>
			<% }
		}
	}
%>

</body>
</html>