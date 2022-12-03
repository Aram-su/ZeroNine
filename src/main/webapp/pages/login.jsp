<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ZERO 9 - 로그인</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="../resources/css/signUp.css" rel="stylesheet">
</head>
<script src="../resources/js/signUp.js"></script>
<body>
	<jsp:include page="header.jsp" />

  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">로그인</h4>
        	<%
				String error = request.getParameter("error");
				if( error != null ){
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해주세요.");
					out.println("</div>");
				}
			%>
        
        <hr class="mb-4">
        
        <form id="form-signin" method="post" action="./processLogin.jsp">
    
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong>아이디</strong></label>
            <input type="text" class="form-control" id="id" name="id" required autofocus>
          </div>
          
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong>비밀번호</strong></label>
            <input type="password" class="form-control" id="password" name="password" required >
          </div>
      
          <hr class="mb-4">
       		<input class="btn btn-lg btn-block" type="submit" value="로그인" style="background-color:#9f9fc6;"></button>
        </form>
      </div>
    </div>
  </div>
 
</body>

</html>