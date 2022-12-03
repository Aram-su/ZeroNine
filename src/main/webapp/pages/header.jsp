<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<style>
.site-header {
  -webkit-backdrop-filter: saturate(180%) blur(20px);
  backdrop-filter: saturate(180%) blur(20px);
  
  	font-size: 18px; 
	background-color:#000000;
}
.site-header a {
  transition: color .15s ease-in-out;
  
  	font-weight: bold;
	color: #adb5bd;
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
    <link href="../resources/css/headers.css" rel="stylesheet">
    
    <% Cookie[] cookies = request.getCookies();
	    String last_page = "#";
	    if ( cookies != null && cookies.length > 1){
	    	last_page = cookies[ cookies.length - 2 ].getValue();
	    }
    %>
    
  
  
<header class="site-header sticky-top py-1" >
  <nav class="container d-flex flex-column flex-md-row justify-content-between">
	<p class="header-list py-3" style="color:white; font-weight:bold;"> 
	<% if ((String)session.getAttribute("userName") == null)
		out.print("로그아웃 상태");
		else
			out.print((String) session.getAttribute("userName"));
		%>
	</p>
    
    <a class="header-list py-3" href="index.jsp">메인 페이지</a>
    <a class="header-list py-3" href="products.jsp">공구 목록</a>
    <a class="header-list py-3" href="addProduct.jsp">공구 등록</a>
    <a class="header-list py-3" href="./product.jsp?<%= last_page %>">최근 본 상품</a>
    <a class="header-list py-3" href="login.jsp">로그인</a>
    <a class="header-list py-3" href="logout.jsp">로그아웃</a>
    <a class="header-list py-3" href="signUp.jsp">회원가입</a>
  </nav>
</header>
