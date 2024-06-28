<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id"); // 기존 request
	String avg = request.getParameter("avg"); // forward param
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4><%=id %>님의 평균은 <%=avg %>점</h4>
	<h4>😭불합격😭입니다.</h4>
</body>
</html>