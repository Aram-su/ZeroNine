<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.User" %>
<%@ page import="dao.UserRepository" %>
<%@ include file ="dbconn.jsp" %>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("password");
String name = request.getParameter("name");
String nick = request.getParameter("nickname");
String email = request.getParameter("email");
String addr = request.getParameter("address");


PreparedStatement pstmt = null;

try{
	String sql = "INSERT INTO users(name, nick, id, pw, email, addr) values(?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, nick);
	pstmt.setString(3, id);
	pstmt.setString(4, pw);
	pstmt.setString(5, email);
	pstmt.setString(6, addr);
	pstmt.executeUpdate();
	%>
	<script>
	alert('회원 가입 성공!\n메인 페이지로 이동합니다.');
	document.location.href="index.jsp";
	</script>
	<%
	
} catch (SQLException ex){
	%>
	<script>
	alert('SQL 오류 발생');
	document.location.href="index.jsp";
	</script>
	<%
} finally {
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
}
%>