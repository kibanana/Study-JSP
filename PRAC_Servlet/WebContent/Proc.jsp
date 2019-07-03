<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%	 
	String var1 = "지역변수";
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gen = request.getParameter("gen");
	
	if(gen.equals("M"))
		gen = "남";
	else
		gen = "여";
	
	String inotice = request.getParameter("inotice");
	String cnotice = request.getParameter("cnotice");
	String dnotice = request.getParameter("dnotice");	
	
	String hero = request.getParameter("hero");	
%>

이름 : <%= name %> <br>
ID : <%= id %> <br>
PW : <%= pw %> <br>
성별 : <%= gen %> <br>

공지 메일 : <%= notice(inotice) %> <br>
광고 메일 : <%= notice(cnotice) %> <br>
배송 메일 : <%= notice(dnotice) %> <br>

좋아하는 영웅은 <%= hero %> 입니다. <br>

<%!
	String var2 = "전역변수";

	public String notice(String notice) {
		if(notice==null)
			return "받지않음";
		else
			return "받음";
	}
%>












