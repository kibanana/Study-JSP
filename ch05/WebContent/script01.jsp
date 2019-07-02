<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>스크립트릿 연습</h2>

<%-- 
<%!
	String str1 = "전역변수 선언";

	public String getStr() {
		return str1;
	}

%>

스크립트릿에서 선언한 변수 str2는 <%= str2 %> <br>
선언문에서 선언한 변수 str1 <%= getStr() %> <br>
--%>

<%
	String str1 = str2 + "Server page";
%>
<%! 
	String str2 = "Java";
%>

	출력결과 : <%= str1 %>
	
	
	<%!
		String id = "Kingdora";
		public String getId() {
			return id;
		}
	%>
	
	id 변수 내용 <%=id %>
	getId 메소드 실행 결과 <%= getId() %>
</body>
</html>