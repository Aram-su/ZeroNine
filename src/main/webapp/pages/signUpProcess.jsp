<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("password");
String name = request.getParameter("name");
String nick = request.getParameter("nickname");
String email = request.getParameter("email");
String addr = request.getParameter("address");

out.print(id+"<br>");
out.print(pw+"<br>");
out.print(name+"<br>");
out.print(nick+"<br>");
out.print(email+"<br>");
out.print(addr+"<br>");

%>

</body>
</html>