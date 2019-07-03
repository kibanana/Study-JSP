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
