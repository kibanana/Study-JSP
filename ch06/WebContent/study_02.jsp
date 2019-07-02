<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"
    import = "java.sql.*"
    session="true"
    buffer="8kb"
    autoFlush="true"
    isThreadSafe="true"
    info="jsp문서에 정보 - 필요시에만 기술"
    errorPage="kim.jsp"
    %>
    
    <%--
    	기본 제공 패키지
    	import java.lang.*;
    	import javax.servlet.*;
    	import javax.servlet.jsp.*;
    	import javax.servlet.http.*;
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 지시어 (페이지 디렉티브)</title>
</head>
<body>
<strong>페이지 지시어는 JSP 문서의 앞에서 꼭 필요한 것만 기술한다.</strong>

<br>

<p>
*** 날짜 및 시간 출력 ***
</p>
<%
	Calendar date = Calendar.getInstance();
 	int year = date.get(Calendar.YEAR);
	int month = date.get(Calendar.MONTH) + 1;
	int day = date.get(Calendar.DATE);
	out.println("오늘은 " + year + "년" +month+"월"+day+"일 입니다.");
%>
<br>

<%=this.getServletInfo() %>

<% int a = 10/0; %>
</body>
</html>