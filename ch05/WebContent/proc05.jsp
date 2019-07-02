<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%-- 
	
	<%
		String strArray[] = {"Java", "JSP", "Android", "HTML5", "React"};
	
	for(int i=0; i<strArray.length; i++) {
		out.println("strArray[" + i + "]의 값은 " + strArray[i] + " 입니다.");
	}
	%>
	
	--%>
	
	<%
		int i = 0;
	
		while(i < 10){
			out.println("출력되는 값은 " + i + " 입니다.");
			i++;
		}
	%>