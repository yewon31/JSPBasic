<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 값을 저장
	session.setAttribute("user_id", "aaa123");
	session.setAttribute("user_name", "홍길동");
	
	//app에 값을 저장
	application.setAttribute("menu", new String[] {"아아", "카페라뗴"});
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	${sessionScope.user_id }<br>
	${sessionScope.user_name }<br>
	
	<!-- 
		sessionScope, applicationScope 도 생략이 가능한데,
		쓰는편이 좋습니다.
		생략하게 되면 request -> session -> application 순서로 이름값을 찾음.
	 -->
	${applicationScope.menu[0] }

</body>
</html>