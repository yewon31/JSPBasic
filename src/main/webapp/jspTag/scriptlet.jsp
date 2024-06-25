<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//자바코드
		//main
		int a = 1;
		if(a>=10) {
			out.println("참");
		} else {
			out.println("거짓");
		}
	%>
	<hr>
	
	<%
		for(int i=1; i<=10; i++) {
			out.println(i+"<br>");
		}
	%>
	
	<hr>
	
	<%
		if(a>=10) {
			out.println("<a href='#'>참</a>");
		} else {
			out.println("<a href='#'>거짓</a>");
		}
	%>
	
	<%if(a>=10) { %>
		<a href='#'>참</a>
	<%	} else { %>
		<a href='#'>거짓</a>
	<%	}%>
</body>
</html>