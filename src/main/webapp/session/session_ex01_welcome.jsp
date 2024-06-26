<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//이 페이지는 세션이 있는사람(로그인한 사람) 만 들어올수 있는 페이지
	//로그인 안된사람은 접근하지 못하도록
	if( session.getAttribute("id") == null ) {
		response.sendRedirect("session_ex01.jsp");
	}
	//세션에 저장된 값을 얻는다.
	String id = (String)session.getAttribute("id");
	String nick = (String)session.getAttribute("nick");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>🎉 <%=id %>(<%=nick %>)님 환영합니다 🎉</h3>
	<hr>
	<h4>▶️<a href="	">로그아웃</a>◀️</h4>
</body>
</html>