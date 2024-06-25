<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>입력양식</h3>
	<form action="req_ex02.jsp">
		닉네임 : <input type="text" name="nick">
		<br>
		<br>
		취미 : 
		<input type="checkbox" name="hobby" value="A">aa
		<input type="checkbox" name="hobby" value="B">bb
		<input type="checkbox" name="hobby" value="C">cc
		<br>
		<br>
		사는 곳 :
		<select name="region">
			<option value="경기">경기</option>
			<option value="인천">인천</option>
			<option value="서울">서울</option>
		</select>
		<br>
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>