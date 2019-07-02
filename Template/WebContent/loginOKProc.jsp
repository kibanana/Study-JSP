<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


   <%
   		request.setCharacterEncoding("UTF-8");
   		String id = request.getParameter("id");
   	
   %>
   
   [로그인 성공]
   <span style="color: yellowGreen; font-size: 20px;">
   	<%=id %>
   </span>님의 방문을 환영합니다.