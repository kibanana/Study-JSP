<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   
    %>
    
    <%
	    request.setCharacterEncoding("UTF-8");
		
    	String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String hobby = request.getParameter("hobby");
		String major = request.getParameter("major");
		String protocol = request.getParameter("protocol");
    %>
    

이름 : <%=name %> <br>
ID : <%=id %> <br>
비밀번호 : <%=pwd %> <br>
취미 : <%=hobby %>
전공 : <%=major %>
프로토콜 : <%=protocol %>
