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
  
Http 주요 응답 상태 코드 **  
- *200: 요청이 정상적으로 처리 됨 (ajax 에서 중요)
- 307: 임시로 페이지가 리다이렉트됨
- 400: 클라이언트의 요청이 잘못된 구문으로 구성됨
- 401: 접근이 허용되지 않음
- *404: 지정된 URL을 처리하기 위한 자원이 존재하지 않음 (URL 잘못) //
- 405: 요청된 메서드는 허용되지 않음
- *500: 서버 내부 에러(JSP에서 Exception이 발생하는 경우) //
- *503: 서버가 일시적으로 서비스를 제공할 수 없음 (급격하게 부하가 걸리거나 서버가 임시 보수 중인 경우) 
  
Element의 종류 *  
- 지시어 : <%@ ~~~ %> : 문서에 대한 설정 정보 지정
- 선언 : <%! ~~~~ %> : 메서드 선언, 전역 변수
- 표현식 : <%= ~~~~ %> : 클라이언트로 컴파일 된 값을 출력
- 스크립트 : <% ~~~ %> : 순수 자바 코드
- 액션태그 : <jsp:
  
** 액션 태그 역할 : 각 페이지간 이동 또는 빈즈 사용 등에 활용 **   
** 액션 태그 종류 : include, forward, plug-in, useBean,  **  
include : 여러 jsp 파일에서 공통으로 사용되는 부분을 별도의 파일로 만들어
필요할때마다 불러 사용한다.
