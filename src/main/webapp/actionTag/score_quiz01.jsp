<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="score_result.jsp" method="post">
		이름 : <input type="text" name="id" size=10><br><br>
		국어 : <input type="number" name="korean" size=10><br><br>
		영어 : <input type="number" name="english" size=10><br><br>
		수학 : <input type="number" name="math" size=10><br><br>
		<input type="submit" value="확인">
	</form>
	
</body>
</html>