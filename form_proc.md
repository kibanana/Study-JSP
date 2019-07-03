form01.jsp - proc01.jsp

```java
<%
	request.setCharacterEncoding("UTF-8");
	int number = Integer.parseInt(request.getParameter("number"));
	
	if(number <= 10) { %>
		입력한 숫자 <%=number%> 는 10보다 작습니다.
		<!-- out.println("입력한 " + number + "는 10보다 작습니다."); -->
<% } %>
```

<br>
<br>

form02.jsp - proc02.jsp

```java
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age>=20){
		out.println("<strong>" + name + "</strong>님의 나이는 20세 이상입니다.");
	} else {
		out.println("<strong>" + name + "</strong>님은 미성년자입니다.");
	}
%>
```

<br>
<br>

form03.jsp - proc03.jsp

```java
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String local = request.getParameter("local");
	String tel = request.getParameter("tel");
	String localNum = "";
	
	if(local.equals("서울")) {
		localNum = "02";
	} else if(local.equals("경기")) {
		localNum = "031";
	} else if(local.equals("강원")) {
		localNum = "033";
	}
	
	out.println("<strong>" + name + "</strong>님의 전화번호는 " + localNum + "-" + tel + "입니다.");
%>
```

<br>
<br>

form04.jsp - proc04.jsp

```java
<%
	request.setCharacterEncoding("UTF-8");

	String localNum = request.getParameter("localNum");

	String localName = "";
	switch(localNum) {
		case "0" : localName="종로 중구 용상"; break;
		case "1" : localName="도봉 강북 노원 성북"; break;
		case "2" : localName="동대문 성동 중랑 광진"; break;
		case "3" : localName="강동 송파"; break;
		case "4" : localName="서초 강남"; break;
		case "5" : localName="동작 관악 금천"; break;
		case "6" : localName="강서 양천 영등포 구로"; break;
		case "7" : localName="은평 마포 서대문"; break;
		default : localName="없는 권역"; break;
	}
	
	out.println("선택하신 지역은 <strong>" + localName + "</strong>입니다.");
%>
```
