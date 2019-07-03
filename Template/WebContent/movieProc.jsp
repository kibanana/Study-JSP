<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		width: 300px;
		height: 400px;
		object-fit: cover;
	}
</style>
</head>
<body>
<img src="img/image05.jpg">

<%
	BufferedReader reader = null;
	try { 
		//인터넷, 파일(파일 경로), DB(작동, 점검 등) 처리 => 프로그램을 잘못 짠 건 아니지만 지정된 경로 등, 
		//개발자가 예상치 못한 문제가 발생되는 것을 대비해서 예외처리를 하는 것.
		String filePath = application.getRealPath("/WEB-INF/movie.txt");	
		//out.println(filePath);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true) {
			String str = reader.readLine();
			if(str==null) break;
			out.println("<br>" + str);
		}
	} catch(Exception e) {
		out.println("지정된 경로를 찾을 수 없습니다.");
	} finally { 
		reader.close(); //다른 연결도 할 수 있도록 꼭 close 해줘야 함
	}
%>
</body>
</html>