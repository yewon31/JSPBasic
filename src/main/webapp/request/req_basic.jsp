<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI(); // 프로토콜, 아이피주소, 포트번호 제외
	String path = request.getContextPath(); // was가 프로젝트를 구분하는 경로
	String remote = request.getRemoteAddr(); // 사용자의 접속주소
	System.out.println("접속한 사람 : " + remote);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	url : <%=url %><br><br>
	uri : <%=uri %><br><br>
	path : <%=path %><br><br>
	remote : <%=remote %><br>
	
	<!--
	url : http://localhost:8181/JSPBasic/request/req_basic.jsp
	uri : /JSPBasic/request/req_basic.jsp
	path : /JSPBasic
	remote : 0:0:0:0:0:0:0:1 
	 -->
</body>
</html>