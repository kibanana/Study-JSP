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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>

id : <%=id %><br>
pwd : <%=pwd %><br>

<hr>

id : ${param.id}<br>
pwd : ${param.pwd}<br>

<hr>

id : ${param["id"]}<br>
pwd : ${param["pwd"]}<br>

<hr>

applicationScope: ${applicationScope.application_Key} <br>
sessionScope: ${sessionScope.session_Key} <br>
pageScope: ${pageScope.pageContext_Key} <br>
requestScope: ${requestScope.request_Key} <br>

<hr>

${ initParam.id }
</body>
</html>