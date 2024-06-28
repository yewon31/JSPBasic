<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>데이터 처리 페이지를 servlet으로 변경</h3>
	
	<form action="../forward" method="post">
			아이디:<input type="text" name="id">
			비밀번호:<input type="text" name="pw">
			<input type="submit" value="확인">
	</form>
	
</body>
</html>