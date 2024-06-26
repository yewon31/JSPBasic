<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>경로 공부하기</h3>
	
	<!-- a태그로 jspTag폴더에 include페이지로 상대경로, 절대경로 -->
	<h4>include.jsp</h4>
	<b>🌳절대경로</b> : <a href="/JSPBasic/jspTag/include.jsp">/JSPBasic/jspTag/include.jsp</a><br><br>
	<b>🌳상대경로</b> : <a href="../../jspTag/include.jsp">../../jspTag/include.jsp</a><br><br><br>
	
	<!-- MyServlet 맵핑경로는 /JSPBasic/apple 입니다. 상대경로 이동-->
	<h4>MyServlet</h4>
	<b>🌳절대경로</b> : <a href="/JSPBasic/apple">/JSPBasic/apple</a><br><br>
	<b>🌳상대경로</b> : <a href="../../apple">../../apple</a><br><br><br>
	
	<!-- html안에 있는 이미지파일을 img태그 상대경로, 절대경로 참조 -->
	<h4>이미지</h4>
	<b>🌳절대경로</b> : <a href="/JSPBasic/html/img/img1.png">/JSPBasic/html/img/img1.png</a><br><br>
	<b>🌳상대경로</b> : <a href="../../html/img/img1.png">../../html/img/img1.png</a><br><br><br>
</body>
</html>