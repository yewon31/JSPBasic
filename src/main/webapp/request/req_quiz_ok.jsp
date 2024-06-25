<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//POST 방식 한글 처리 - request를 사용하기 전 인코딩 형식 지정
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String[] inter = request.getParameterValues("inter"); //checkbox
	String major = request.getParameter("major");
	String regdate = request.getParameter("regdate");
	String region = request.getParameter("region");
	String introduce = request.getParameter("introduce");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>넘어온 데이터</h3>
	<%=id %><br>
	<%=pw %><br>
	<%=Arrays.toString(inter) %><br>
	<%=major %><br>
	<%=regdate %><br>
	<%=region %><br>
	<%=introduce %><br>
</body>
</html>