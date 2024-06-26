<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 생성 문법
	//1. 쿠키객체 생성
	Cookie cookie = new Cookie("user_id", "aaa123"); //이름, 값
	Cookie cookie2 = new Cookie("user_name", "홍길자");
	
	//2. 쿠키의 지속시간 설정
	cookie.setMaxAge(3600); //1시간
	cookie2.setMaxAge(20); //20초
	
	//3. 쿠키를 response에 담아서 보낸다.
	response.addCookie(cookie);
	response.addCookie(cookie2);
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>쿠키란?</h3>
	<h4>서버와 클라이언트의 정보 유지수단으로 서버에서 만들어서 클라이언트에 저장합니다</h4>
	
	<a href="cookie_get.jsp">cookie사용하기 1 (모든 쿠키)</a><br><br>
	<a href="cookie_get2.jsp">cookie사용하기 2 (user_id 쿠키가 있는지 확인)</a>
	
</body>
</html>