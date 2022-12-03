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

ResultSet rs = null;
PreparedStatement pstmt = null;

try{
	String sql = "select * from users where id= ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	
	rs.next();
	String result = rs.getString("id");
	if ( result == null && session.getAttribute("userName") == null){
		response.sendRedirect("exceptionNoId.jsp");
	}
	else {
		if( rs.getString("pw").equals(pw) ){
			session.setAttribute("userID", rs.getString("id"));
			session.setAttribute("userName", rs.getString("name"));
			session.setAttribute("userNick", rs.getString("nick"));
			session.setAttribute("userEmail", rs.getString("email"));
			session.setAttribute("userAddr", rs.getString("addr"));
			%>
			<script>
			alert('로그인 성공!\n메인 페이지로 이동합니다.');
			document.location.href="index.jsp";
			</script>
			<%
		}
		else{
			%>
			<script>
			document.location.href="login_failed.jsp";
			</script>
			<%
		}
	}
	
} catch (SQLException ex){
	%>
	<script>
	alert('SQL 오류 발생');
	document.location.href="index.jsp";
	</script>
	<%
} finally {
	if ( rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
}
%>