<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<style>
.site-header {
  -webkit-backdrop-filter: saturate(180%) blur(20px);
  backdrop-filter: saturate(180%) blur(20px);
  
  	font-size: 18px; 
	background-color:#2f2f50;
}
.site-header a {
  color: #8e8e8e;
  transition: color .15s ease-in-out;
  
  	font-weight: bold;
	color: gray;
	text-decoration-line : none;
}
.site-header a:hover {
  color: #fff;
  text-decoration: none;
}

.container {
  max-width: 960px;
}
</style>

    <link href="../resources/css/product.css" rel="stylesheet">
    <link href="../resources/css/index.css" rel="stylesheet">


<header class="site-header sticky-top py-2" >
  <nav class="container d-flex flex-column flex-md-row justify-content-between">

    <a class="header-list py-3" href="index.jsp">메인 페이지</a>
    <a class="header-list py-3" href="#">공구 목록</a>
    <a class="header-list py-3" href="#">공구 등록</a>
    <a class="header-list py-3" href="#">배달 목록</a>
    <a class="header-list py-3" href="#">배달 등록</a>
    <a class="header-list py-3" href="#">로그인</a>
    <a class="header-list py-3" href="signUp.jsp">회원가입</a>
  </nav>
</header>

