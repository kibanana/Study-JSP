```java
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"
    import = "java.sql.*"
    session="true"
    buffer="8kb"
    autoFlush="true"
    isThreadSafe="true"
    info="jsp문서에 정보 - 필요시에만 기술"
    errorPage="kim.jsp"
    %>
```

```java
// kim.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
    
<%-- 에러 처리 페이지에서만 exception 기본 내장 객체 사용 --%>
<strong>
예외 타입: <%=exception.getClass().getName() %>
</strong>
<br>
<strong>
예외 메시지: <%=exception.getMessage() %>
</strong>
<br>
<%
//바이트수를 늘린다
//익스플로러를 안쓴다
%>
```

<br>

```java
<%
	String name = "김예원";
	String encodedName = URLEncoder.encode(name, "UTF-8");
	response.sendRedirect("index.jsp?name="+encodedName);
%>
```

<br>

```java
<%
	Map map = request.getParameterMap();
	String[] nameParam = (String[])map.get("name");
	String[] addressParam = (String[])map.get("address");
	
	String[] petParam = (String[])map.get("pet");
	
	out.println(nameParam[0]);
	out.println(addressParam[0]);

	if(petParam!=null)
		for(int i=0; i<petParam.length; i++){
			out.println(petParam[i] + "<br>");
		}
%>
```
  
### Http 주요 응답 상태 코드
- *200: 요청이 정상적으로 처리 됨 (ajax 에서 중요)
- 307: 임시로 페이지가 리다이렉트됨
- 400: 클라이언트의 요청이 잘못된 구문으로 구성됨
- 401: 접근이 허용되지 않음
- *404: 지정된 URL을 처리하기 위한 자원이 존재하지 않음 (URL 잘못) //
- 405: 요청된 메서드는 허용되지 않음
- *500: 서버 내부 에러(JSP에서 Exception이 발생하는 경우) //
- *503: 서버가 일시적으로 서비스를 제공할 수 없음 (급격하게 부하가 걸리거나 서버가 임시 보수 중인 경우) 
  
### Element의 종류 
- 지시어 : <%@ ~~~ %> : 문서에 대한 설정 정보 지정
- 선언 : <%! ~~~~ %> : 메서드 선언, 전역 변수
- 표현식 : <%= ~~~~ %> : 클라이언트로 컴파일 된 값을 출력
- 스크립트 : <% ~~~ %> : 순수 자바 코드
- 액션태그 : <jsp:
  
### 액션태그
** 액션 태그 역할 : 각 페이지간 이동 또는 빈즈 사용 등에 활용 **   
** 액션 태그 종류 : include, forward, plug-in, useBean,  **  
include : 여러 jsp 파일에서 공통으로 사용되는 부분을 별도의 파일로 만들어
필요할때마다 불러 사용한다.


### 웹 어플리케이션 네 개의 영역(scope)
- PAGE 영역 : 하나의 JSP 페이지를 처리할 때 사용하는 영역 => PageContext
- REQUEST 영역 : 하나의 HTTP 요청(include, forward)을 처리할 때 사용하는 영역
- SESSION 영역 : 하나의 웹 브라우저와 관련된 영역
- APPLICATION 영역 : 하나의 웹 어플리케이션과 관련된 영역 (Dynamic Web Project)

### 기본 객체별로 속성의 활용
- pageContext: PAGE 영역을 담당, 하나의 JSP 페이지 내에서 공유될 값을 저장
                주로 커스텀 태그(JSP 고급스킬)에서 새로운 변수를 추가할 때 사용
- request : REQUEST 영역을 담당, 한 번의 요청을 처리하는 데 사용되는 모든 JSP 페이지에서 공유될 값을 저장한다.
            주로 하나의(한 번의) 요청을 처리하는데 사용되는  JSP 페이지 사이에서 정보를 전달하기 위해 사용된다.
- session : SESSION 영역을 담당, 한 사용자(웹브라우저)와 관련된 정보를 JSP 페이지들이 공유하기 위해서 사용된다.
            사용자의 로그인 정보와 같은 것들을 저장한다.
- application : APPICATION 영역을 담당, 웹 컨테이너 안에 있는, 모든 사용자와 관련해서 공유할 정보를 저장한다.
                임시 디렉터리 경로와 같은 웹 어플리케이션의 설정 정보를 주로 저장한다.
