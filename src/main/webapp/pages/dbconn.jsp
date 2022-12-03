<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3307/zeronine?serverTimezone=Asia/Seoul&useSSL=false";
	String db_user = "root";
	String password = "1234";
		
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,db_user,password);
%>