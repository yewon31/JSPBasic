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
	<!-- form 태그 -->
	<form action="req_quiz_ok.jsp" method="post">
		아이디 : <input type="text" name="id" placeholder="힌트" size="7">
		<br><br>
		비밀번호 : <input type="password" name="pw">
		<br><br>
		관심분야 :
		<input type="checkbox" name="inter" value="java">java
		<input type="checkbox" name="inter" value="jsp">jsp
		<input type="checkbox" name="inter" value="database">database
		<input type="checkbox" name="inter" value="python">python
		<br><br>
		전공분야 :
		<input type="radio" name="major" value="경영">경영
		<input type="radio" name="major" value="컴퓨터 공학">컴퓨터 공학
		<input type="radio" name="major" value="철학">철학
		<input type="radio" name="major" value="수학">수학
		<br><br>
		입사일 :
		<input type="date" name="regdate">
		<br><br>
		지역 : 
		<select name="region">
			<option value="서울시">서울시</option>
			<option value="경기도">경기도</option>
			<option value="부산시">부산시</option>
			<option value="인천시">인천시</option>
		</select>
		<br><br>
		자기소개 : <br>
		<textarea name="introduce" rows="5" cols="30"></textarea>
		<br><br>
		<input type="submit" value="확인">
		<input type="reset" value="다시 작성">
		<input type="button" value="버튼">
	</form>
</body>
</html>