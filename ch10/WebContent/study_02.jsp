<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="test" class="mirim.hs.kr.TestBean" scope="request" />

<jsp:getProperty name="test" property="name" />

</body>
</html>