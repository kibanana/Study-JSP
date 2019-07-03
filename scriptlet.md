```java
<%
	String str1 = str2 + "Server page";
%>
<%! 
	String str2 = "Java";
%>
```
만약 str2가 전역변수가 아니라면 500 에러가 발생한다.

<br>

```java
<%!
	String id = "Kingdora";
	public String getId() {
		return id;
	}
%>
	
id 변수 내용 <%=id %>
getId 메소드 실행 결과 <%= getId() %>
```
메소드는 선언문(<%! %>)에서만 선언 가능하다.  
스크립트릿(<% %>)에서 선언할 경우 에러

<br>

```javascript
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
%>

현재는 <%= now.getHours() %>시 <%=now.getMinutes() %>분입니다.
```

```javascript
<%
	String str[] = {"JSP", "JAVA", "Android", "HTML5"};
	int i = (int)(Math.random() * str.length);
%>

<%= str[i] %>가 재밌다.
```

<br>

```javascript
<%
	StringBuffer sf = new StringBuffer("오늘은 수요일 수요일은 다먹는날 모레는 금요일 금요일은 집가는날");
	sf.reverse();
	
	out.println("객체의 내용 : " + sf.toString());
	
	String str = "소스 보기를 하면 화면에 표시 됩니다.";
%>
```
HTML 주석 => 페이지 소스 보기 시 보임  
Java 주석 => 페이지 소스 보기 시 사라짐
