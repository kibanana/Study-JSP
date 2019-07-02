<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="top.jsp" %>

<h2>개인 정보 입력</h2>
<form action="proc.jsp" method="post">
이름 : <input type="text" name="name"> <br>
ID : <input type="text" name="id"> <br>
비밀번호 : <input type="password" name="pwd"> <br>
성별 : 
남<input type="radio" name="gen" value="M">
남<input type="radio" name="gen" value="F">
<input type="submit" value="확인">
<input type="reset" value="취소">
</form>


<%@ include file="bottom.jsp" %>