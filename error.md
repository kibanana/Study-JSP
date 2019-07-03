### 에러처리
- page 디렉티브의 errorPage 속성을 사용한 에러처리 방법  
  => 과거, 최근 웹 컨테이너 지원 X
- 에러 코드별 처리

```xml
 <error-page>
  	<error-code>404</error-code>
  	<location>/404error.jsp</location>
  </error-page>
  
  <error-page>
  	<error-code>500</error-code>
  	<location>/500error.jsp</location>
  </error-page>
  ```
    
  ```java
  <% response.setStatus(HttpServletResponse.SC_OK); %>
  ```
  
  ```java
<% response.setStatus(200); %>
  ```
  위 코드와 동일한 과정
  
  현재 페이지가 정상적으로 응답되는 페이지임을 지정하는 코드.  
  이 코드를 생략(or 513byte ↓)하면 웹 브라우저가 자체적으로 제공하는 화면을 표시함.  
