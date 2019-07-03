<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= out.isAutoFlush(); %>
<br />
	
<%
	out.getBufferSize();
	out.getRemaining();
	out.clearBuffer();
	
	pageContext.getRequest();
	
	ServletRequest request2 = pageContext.getRequest();
	ServletResponse response2 = pageContext.getResponse();
	JspWriter out2 = pageContext.getOut();	
	
	out.print(request.getParameter("name"));
	out.print(request2.getParameter("name"));
	
	HttpSession session2 = pageContext.getSession();
%>
</body>
</html>