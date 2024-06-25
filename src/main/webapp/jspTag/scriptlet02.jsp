<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>구구단 3단</h3>
	<%
		for (int i = 1; i < 10; i++) {
	        out.println(3 + " x " + i + " = " + i * 3 + "<br>");
	    }
	%>
	<hr>
	
	<h3>구구단 3단 - 표현식</h3>
	<%for (int i = 1; i < 10; i++) {%>
		3 * <%=i %> = <%=i*3 %><br>
    <%}%>
	<hr>
	
	<h3>체크박스에 1~20까지 숫자를 붙여서 가로로 출력</h3>
	<%for (int i = 1; i < 21; i++) {%>
		<input type="checkbox" name="<%=i%>"><%=i%>
    <%}%>
	<hr>
	
	<!-- html 주석 ( ctrl shift / ) -->
	<%-- jsp 주석 --%>
	<h3>전체 구구단 출력</h3>
	<%for (int i = 2; i < 10; i++) {
        for (int j = 1; j < 10; j++) {%>
			<%=i %> * <%=j %> = <%=i*j %><br>
		<%}%>
		<br>
    <%}%>
</body>
</html>