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
<%
	String names[] = {"프로토콜이름", "서버이름", "Method방식", "컨텍스트경로", "URI", "접속 IP"};
	String values[] = {request.getProtocol(), request.getServerName(), request.getMethod(), request.getContextPath(), request.getRequestURI(), request.getRemoteAddr()};
	
	for(int i=0; i<names.length; i++) {
		out.println(names[i]+" "+values[i] + "<br>");
	}
%>

<hr>

<%
	Enumeration en = request.getHeaderNames();
	while(en.hasMoreElements()) {
		String key = (String)en.nextElement();
		String value = request.getHeader(key);
		out.println("<span style='color: red;'>" + key + "</span> " + value + "<br>");
	}
%>
</body>
</html>