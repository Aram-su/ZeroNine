<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="../resources/js/validation.js"></script>
<link href="../resources/css/signUp.css" rel="stylesheet">
<meta charset="UTF-8">
<title>ZERO 9 - 공구 등록</title>
</head>
<body>
<%
if ( session.getAttribute("userName") == null ){
	%>
	<script>
	alert('로그인해주세요');
	document.location.href="index.jsp";
	</script>
	
	<%
}
%>
	<fmt:setLocale value='<%= request.getParameter("language")%>'/>
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="header.jsp" />


	<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3"><fmt:message key="title" /></h4>
        <p><a href="?language=ko" >Korean</a>|<a href="?language=en">English</a></p>
        
 
        <hr class="mb-4">
        
        <form id="newProduct" name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post"
		enctype="multipart/form-data" >
    
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong><fmt:message key="id" /></strong></label>
            <input type="text" class="form-control" id="id" name="id" required autofocus>
          </div>
          
		  <div class="mb-3">
            <label for="inputUserName" class="" ><strong><fmt:message key="pname" /></strong></label>
            <input type="text" class="form-control" id="pname" name="pname" required >
          </div>
          
          
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong><fmt:message key="category" /></strong></label>
            <input type="text" class="form-control" id="category" name="category" required >
          </div>
          
          
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong><fmt:message key="price" /></strong></label>
            <input type="text" class="form-control" id="price" name="price" required >
          </div>
          
          
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong><fmt:message key="pnum" /></strong></label>
            <input type="text" class="form-control" id="pnum" name="pnum" required >
          </div>
          
          
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong><fmt:message key="address" /></strong></label>
            <input type="text" class="form-control" id="address" name="address" required >
          </div>
          
          
          <div class="mb-3">
            <label for="inputUserName" class="" ><strong><fmt:message key="description" /></strong></label>
            <textarea id="description" name="description" cols="50" rows="2" class="form-control"></textarea>
          </div>
          
          
		 <div class="mb-3">
		 	<label for="inputUserName" class=""  ><strong><fmt:message key="pimage" /></strong></label>
		 		<input type="file" id="pimage" name="pimage" class="form-control">
		 </div>

      
          <hr class="mb-4">
       		<input class="btn btn-lg btn-block" type="button" value='<fmt:message key="button" />' onclick="CheckAddProduct()"
       		style="background-color:#9f9fc6;"></button>
        </form>
      </div>
    </div>
  </div>
	
	
	
</fmt:bundle>
</body>
</html>