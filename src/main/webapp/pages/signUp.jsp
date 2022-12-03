<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ZERO 9 - 회원가입</title>

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
        <h4 class="mb-3">회원가입</h4>
        
        <hr class="mb-4">
        
        <form id="signUpForm" method="post" action="processSignUp.jsp">
          <div class="row row1">
            <div class="con col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" name="name" id="name" placeholder="홍길동" value="" required>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">별명</label>
              <input type="text" class="form-control" name="nickname" id="nickname" placeholder="연무동자취러" value="" required>
            </div>
          </div>
          
          <div class="mb-3">
            <label for="id">아이디<span class="text-muted">&nbsp;(8~20자)</span></label>
            <input type="text" class="form-control" name="id" id="id" placeholder="" required>
          </div>
          
          <div class="mb-3">
            <label for="email">비밀번호<span class="text-muted">&nbsp;(영문과 숫자를 포함한 8~20자)</span></label>
            <input type="text" class="form-control" name="password" id="password" placeholder="" required>
          </div>

          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="you@example.com" required>
          </div>

          <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" name="address" id="address" placeholder="수원시 연무동" required>
          </div>

          <hr class="mb-4">
          <div class="mb-4"></div>
          <input class="btn btn-lg btn-block" type="button" value="회원가입" onclick="signUpCheck()" style="background-color:#9f9fc6;">
        </form>
      </div>
    </div>
  </div>
 
</body>

</html>