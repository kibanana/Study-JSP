<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>

<%
	request.setCharacterEncoding("UTF-8");
	int number = Integer.parseInt(request.getParameter("number"));
	
	if(number <= 10) { %>
		입력한 숫자 <%=number%> 는 10보다 작습니다.
		<!-- out.println("입력한 " + number + "는 10보다 작습니다."); -->
<% } %>
</body>
</html>