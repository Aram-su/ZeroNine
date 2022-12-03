<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="../resources/css/errorPage.css" rel="stylesheet">
<meta charset="UTF-8">
<title>ZERO 9 - Error</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%!
	String ProductIdError = "해당 물품은 존재하지 않습니다.";
	%>
	<section class="error-page section" style="height:700px;">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-3 col-12 " >
				<!-- Error Inner -->
				<div class="error-inner">
					<h1>NO Product<span><%=ProductIdError %></span></h1>
					<p> <%=request.getRequestURL() %>?<%=request.getQueryString() %>
					<p> <a href="index.jsp" class="btn btn-secondary"> 메인 페이지 &raquo;</a>
				</div>
				<!--/ End Error Inner -->
			</div>
		</div>
	</div>
</section>
	<%@ include file="footer.jsp" %>
	</main>

</body>
</html>