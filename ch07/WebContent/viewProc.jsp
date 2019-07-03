<%@page import="java.util.Map"%>
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
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String[] pet = request.getParameterValues("pet");
	
%>

<br>

<strong>
request.getParameter() 메서드 이용
</strong>
<br>
이름 : <%= name %>
<br>
주소 : <%= address %>
<br>
<strong>
request.getParameterValues() 메서드 이용
</strong>
<br>
<%
	if(pet!=null)
		for(int i=0; i<pet.length; i++){
			out.println(pet[i]);
		}
%> 
<br>
<strong>
request.getParameterNames() 메서드 사용
</strong>
<br>
<%
	Enumeration en1 = request.getParameterNames();
	while(en1.hasMoreElements()) {
		String key = (String) en1.nextElement();
		out.println(key + "<br>");
	}
%>
<br>
<strong>
request.getParameterMap() 메서드 사용
</strong>
<%
	Map map = request.getParameterMap();
	String[] nameParam = (String[])map.get("name");
	String[] addressParam = (String[])map.get("address");
	
	String[] petParam = (String[])map.get("pet");
	
	out.println(nameParam[0]);
	out.println(addressParam[0]);
	
	if(petParam!=null)
		for(int i=0; i<petParam.length; i++){
			out.println(petParam[i] + "<br>");
		}
%>

<br>

<%
	Enumeration en2 = request .getHeaderNames();

	while(en2.hasMoreElements()) {
		String headerKey = (String)en2.nextElement();
		String headerValue = request.getHeader(headerKey);
		out.println(headerValue + "<br>");
	}
%>
</body>
</html>