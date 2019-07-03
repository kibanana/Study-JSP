<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요?
<%
	 String name = "누군가";
	 out.println(name + "의 홈페이지입니다.<br>");
	 
	 for(int i=1; i<7; i++) {
		 out.println("<h" + i + ">");
		 out.println("BTS 슈가 좋앙");
		 out.println("</h"+i+">");
	 }
%>

<hr>

<%
	int a = 0, sum = 0;
	do {
		a++;
		sum += a;
	} while(a<10);
%>

"10까지의 합은 " + <%=sum %> + "입니다.";

<br>

<%= name + "님의 전화번호는 "+ tel %>

<br>

<%!
	String tel = "010-1234-5678";

	public int add(int m, int n){
		return m+n;
	}
%>

<%
	out.println(add(100,200));
%>
</body>
</html>