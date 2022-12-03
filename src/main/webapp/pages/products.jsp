<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoPage.jsp" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>ZERO 9 - 공구 목록</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/features/">

 

    <!-- Bootstrap core CSS -->
	<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../resources/css/features.css" rel="stylesheet">
    <link href="../resources/css/products.css" rel="stylesheet">
  </head>
  <body>
  	<%!
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
    <%@ include file="header.jsp" %>
<main>

  <div class="container px-4 py-5" id="custom-cards">
    <h1 class="pb-2 border-bottom fw-bold">공구 목록</h1>

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      
       
		<%
		for (int i = 0 ; i < listOfProducts.size();i++){
			Product product = listOfProducts.get(i);
		%>
		<div class="col" style=" cursor: pointer;" onclick="location.href='./product.jsp?id=<%=product.getId()%>'">
        <div class="card card-cover h-200 overflow-hidden text-white bg-dark rounded-5 shadow-lg " 
        style="background-image: url('../resources/img/<%=product.getFilename()%>');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1 ">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" style="color:black;">         
            </h2>
          </div>
        </div>
      </div>
			<%
				}
			%>
      
      
    </div>
  </div>


</main>

<%@ include file="footer.jsp" %>


    <script src="../resources/ js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>

