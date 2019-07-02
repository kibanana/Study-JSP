<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%= config.getInitParameter("id") %>
<%= config.getInitParameter("pwd") %>
<%= config.getInitParameter("name") %>

<hr>

<%
	Enumeration en = config.getInitParameterNames();
	while(en.hasMoreElements()) {
		String key = (String) en.nextElement();
		String value= config.getInitParameter(key);
				
		out.println(key + " : " + value + "<br>");
		
	}
%>

<hr>

서블릿 이름 : 
<%= config.getServletName() %>

</body>
</html>