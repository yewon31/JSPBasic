<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String nick = request.getParameter("nick");
	String region = request.getParameter("region");
	String[] hobby = request.getParameterValues("hobby"); //name 여러개
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>서버로 넘어온 데이터</h3>
	닉네임 : <%=nick %><br>
	지역 : <%=region %><br>
	취미 : <%=Arrays.toString(hobby) %>
</body>
</html>