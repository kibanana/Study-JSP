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
	String str = request.getParameter("result");
	if(str.equals("ok")){
		out.println("<span style='color:red;'>게시물</span>이 저장되었습니다.");
	} else {
		
	}

%>
</body>
</html>

<meta http-equiv='refresh' content='3;url=list.jsp'>