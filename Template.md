### main.jsp
  ```java
  <jsp:forward page="templateTest.jsp">
    <jsp:param name="CONTENTPAGE" value="content.jsp"/>
  </jsp:forward>
  ```

  templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`라는 이름의 param을 전달  
  `CONTENTPAGE`의 값은 templateTest.jsp에서 include 될 페이지의 url 임
  <br>
  <br>
### templateTest.jsp
  ```java
  <% 
    request.setCharacterEncoding("UTF-8");
    String contentPage = request.getParameter("CONTENTPAGE");
  %>
  <jsp:include page="<%=contentPage%>" flush="false" />
  ```
    
  templateTest.jsp에는 top.jsp, bottom.jsp, left.jsp, CONTENTPAGE의 값인 url에 해당되는 페이지가 include 됨  
  <br>
  <br>
  
  어떤 한 메뉴는 ~.jsp, ~Proc.jsp 쌍으로 구성됨  
  ex) movie.jsp, movieProc.jsp
  
  ### top.jsp
  #### BTS (photo.jsp, photoProc.jsp)
  - photo.jsp  
    templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "photoProc.jsp"를 담아서 전달
  - photoProc.jsp  
    ```java
    <style>
      img {
        width: 300px;
        height: 400px;
        object-fit: cover;
      }
    </style>
    
    <table border="1">
      <tr>
        <td><img src="img/image1.PNG"></td>
        <td><img src="img/image02.jpg"></td>
      </tr>
      <tr>
        <td><img src="img/image03.jpg"></td>
        <td><img src="img/image04.jpg"></td>
      </tr>
    </table>
    ```
    HTML과 CSS를 이용하여 이미지 삽입
  <br>
  <br>
  
  #### 추천영화 (movie.jsp, movieProc.jsp)
  - movie.jsp  
    templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "movieProc.jsp"를 담아서 전달
  - movieProc.jsp  
    ```java
    <%
      BufferedReader reader = null;
      try { 
        //인터넷, 파일(파일 경로), DB(작동, 점검 등) 처리 => 프로그램을 잘못 짠 건 아니지만 지정된 경로 등, 
        //개발자가 예상치 못한 문제가 발생되는 것을 대비해서 예외처리를 하는 것.
        String filePath = application.getRealPath("/WEB-INF/movie.txt");	
        //out.println(filePath);
        reader = new BufferedReader(new FileReader(filePath));

        while(true) {
          String str = reader.readLine();
          if(str==null) break;
          out.println("<br>" + str);
        }
      } catch(Exception e) {
        out.println("지정된 경로를 찾을 수 없습니다.");
      } finally { 
        reader.close(); //다른 연결도 할 수 있도록 꼭 close 해줘야 함
      }
    %>
    ```
  <br>
  <br>
  
  ### left.jsp
  #### 로그인 (login.jsp, loginProc.jsp, loginProc1.jsp, loginOK.jsp , loginOKProc.jsp)
  - login.jsp  
    templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "loginProc.jsp"를 담아서 전달
  - loginProc.jsp  
    아이디, 비밀번호를 입력받아서 loginProc1.jsp(action, method="post")에 넘기는 form
  - loginProc1.jsp  
    ```java
    <%
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id"); // name 속성
        String pwd = request.getParameter("pwd"); // name 속성

        //DB 로직 구현

        if(id.equals("choi")) { // 회원
          if(pwd.equals("1234")) { %>
            <jsp:forward page="loginOK.jsp" />
          <%
          } else { %>
            <jsp:forward page="login.jsp" />
          <%
          }
        } //else if(id.equals("admin")) // 관리자 계정
        else { //비회원 %>
          <jsp:forward page="insert.jsp" />	
        <%
        }
    %>
    ```
    id가 `choi`이고 비밀번호가 `1234`면 loginOK.jsp로 제어권 이동  
    id가 `choi`이고 비밀번호가 `1234`가 아니면 login.jsp(loginProc.jsp 와 연결)로 제어권 이동  
    id부터가 `choi`가 아니면 회원가입 페이지 insert.jsp로 제어권 이동
      
  - loginOK.jsp  
  templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "loginOKProc.jsp"를 담아서 전달
  - loginOKProc.jsp  
    아이디를 변수에 넣어서 `~님의 방문을 환영합니다`포맷으로 브라우저에 
  <br>
  <br>
  
  #### 게시판 (board.jsp, boardProc.jsp)
  - board.jsp  
    templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "boardProc.jsp"를 담아서 전달
  - boardProc.jsp  
    input text, textarea, submit  
    => form으로 감싸져있지 않으므로 내용 전송 등 불가
  <br>
  <br>
  
  #### 인생영화 (myMovie.jsp, myMovieProc.jsp, movieReader.jsp, movieReaderProc.jsp)
  - myMovie.jsp  
    templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "movieProc.jsp"를 담아서 전달
  - myMovieProcProc.jsp 
    ```java
    <%
      String dirPath = application.getRealPath("/WEB-INF/mymovie/");
      //out.println(dirPath);

      File dir = new File(dirPath);
      String fileNames[] = dir.list();

      /*
      for(String a : fileNames) {
        out.println(a);
      }
      */
    %>

    <%
      for(String filename : fileNames) { 
    %>
        <a href="movieReader.jsp?FILE_NAME=<%=filename%>"><%=filename %></a> <br>
    <%
      }
    %>  
    ```
    mymovie 폴더에 이미 준비해놓은 .txt 파일들의 이름 리스트를 얻어와서  
    파일의 url을 통해 내용을 읽어오는 `movieReader.jsp - movieReaderProc.jsp`로 연결
   - movieReader.jsp  
     templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "movieReaderProc.jsp"를 담아서 전달
   - movieReaderProc.jsp 
      ```java
      <% 
        request.setCharacterEncoding("UTF-8");
        String filename = request.getParameter("FILE_NAME");
        //out.println(filename);
      %>
      
      <%
          BufferedReader reader = null;

          try {
            String filePath = application.getRealPath("/WEB-INF/mymovie/" + filename);	
            //out.println(filePath);
            reader = new BufferedReader(new FileReader(filePath));

            while(true) {
              String str = reader.readLine();
              if(str==null) break;
              out.println("<br>" + str);
            }

          } catch(Exception e) {
            out.println("지정된 경로를 찾을 수 없습니다.");
          } finally { 
            //reader.close(); //다른 연결도 할 수 있도록 꼭 close 해줘야 함
          }
        %>
      ```
     `movie.jsp, movieProc.jsp`와 비슷하게 처리
     
  <br>
  <br>
  
  #### 파일게시판 (boardForm.jsp, boardFormProc.jsp, boardProc2.jsp, boardResult.jsp)
  - boardForm.jsp  
    templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "boardFormProc.jsp"를 담아서 전달
  - boardFormProc.jsp  
    input text 두개와 textarea로 이름, 제목, 내용을 받아 boardProc2.jsp(action, method="post")에 넘김
  - boardProc2.jsp  
    ```java
    <%
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        Date date = new Date();
        Long time = date.getTime();
        String filename = time+ ".txt";
        PrintWriter writer = null;
        String result;

        try {
          String filePath = application.getRealPath("/WEB-INF/bbs/" + filename);
          out.println(filePath);

          writer = new PrintWriter(filePath);
          writer.printf("제목 : %s %n", title);
          writer.printf("글쓴이 : %s %n", name);
          writer.printf(content);

          writer.flush();

          result = "ok";
        } catch(Exception e) {
          out.println("오류 발생");
          result = "fail";
        } finally {
          writer.close();
        }

        response.sendRedirect("boardResult.jsp?result="+result);
      %>
    ```
  - boardResult.jsp
    ```java
    request.setCharacterEncoding("UTF-8");
    String str = request.getParameter("result");
    if(str.equals("ok")){
      out.println("<span style='color:red;'>게시물</span>이 저장되었습니다.");
    }
    
    <meta http-equiv='refresh' content='3;url=list.jsp'>
    ```
    3초 후 list.jsp(빈 페이지)로 이동
  <br>
  <br>
  
  #### 회원가입 (insert.jsp, insertProc.jsp)
  - insert.jsp  
    templateTest.jsp로 제어권을 이동시키며 `CONTENTPAGE`에 "insertProc.jsp"를 담아서 전달
  - insertProc.jsp  
    input text 세개에 이름, 비밀번호, 비밀번호 확인, submit
