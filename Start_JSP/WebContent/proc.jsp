<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   
%>

<%
    request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	
	String var = "지역변수";
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String gen = request.getParameter("gen");
	
	if(gen.equals("M")) {
		gen = "남";
	} else {
		gen = "여";
	}
	
	String inotice = request.getParameter("inotice");
	String anotice = request.getParameter("anotice");
	String snotice = request.getParameter("snotice");
	
	String hero = request.getParameter("hero");
	
	//request.getParameterValues("notices");
%>
    
이름 : <%=name %> <br>
ID : <%=id %> <br>
비밀번호 : <%=pwd %> <br>
성별 : <%=gen %> <br>
공지 메일 : <%=notice(inotice) %> <br>
광고 메일 : <%=notice(anotice) %> <br>
배송 메일 : <%=notice(snotice) %> <br>
좋아하는 영웅은  <%=hero %> 입니다.<br>

<%!
	String var2 = "전역변수";
	
	public String notice(String notice) {
		if(notice==null) return "받지 않음";
		else return "받음";
	}
%>