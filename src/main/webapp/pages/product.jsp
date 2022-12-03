<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>공구 상품 정보</title>

    <link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  
    <!-- Bootstrap core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<link href="../resources/css/starter-template.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
  </head>
  <body>
  
  <%
		ProductRepository dao = ProductRepository.getInstance();
		String id = request.getParameter("id");
		Product product = dao.getProductById(id);
		String link = request.getQueryString();
		
		Cookie[] cook = request.getCookies();
		for ( int i = 0 ; i < cook.length ; i++){
			cook[i].setMaxAge(0);
			response.addCookie(cook[i]);
		}
		
		Cookie page_save = new Cookie("lastPage", link);
		response.addCookie(page_save);
	%>
	
  <%@ include file="header.jsp" %>
    
    
    
<div class="col-lg-8 mx-auto p-3 py-md-5">
  <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
    <a class="d-flex align-items-center text-dark text-decoration-none">
      <h1><span style="font-weight:bold;">공구 상품 정보</span></h1>
    </a>
  </header>

  <main>
  
  <div class="row" >
  	<div class="col-sm-6">
		<h2>[<%= product.getCategory()%>] <%=product.getPname() %></h2>
		<p class="fs-5"><%= product.getDescription()%></p>  
		
			<p> <b>공구 코드 : </b><span class="badge badge-pill badge-danger"><%= product.getId()%></span>
			<p> <b>상품명 : </b> <%= product.getPname()%>
			<p> <b>가격 : </b> <%= product.getPrice()%>
			<p> <b>공구 인원 :</b> <%= product.getPnum()%>
			<p> <b>지역 :</b> <%= product.getAddress()%>
			<h4> 1인당 <%= product.getDividedPrice2()%>원</h4>
			<p>
			<p><a href="./products.jsp" class="btn btn-secondary" > 공구 목록 &raquo;</a>	
  
  	</div>
  	<div class="col-sm-6">
  			<img src="../resources/img/<%=product.getFilename()%>" style=""/>	
  	</div>
  </div>


    <hr>
	
  </main>
<%@ include file="footer.jsp" %>
</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      

  </body>
</html>
