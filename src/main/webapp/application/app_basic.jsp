<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//application내장객체는 session 사용문법은 동일합니다.
	//생명주기 - was를 시작할 때 전역에서 단 1개 생성 됩니다. 
	//프로그램 전역에서 사용할 값 들을 저장해놓을 수 있습니다.

	int total = 0;
	
	//application객체에 값이 있으면, 가져옴
	if(application.getAttribute("total") != null ) {
		total = (int)application.getAttribute("total");	
	}

	total++;
	
	application.setAttribute("total", total);
	//값의 사용
	//int result = (int)application.getAttribute("total");
	
	
	String remote = request.getRemoteAddr();
	System.out.println(remote);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	결과: <%=total %><br>
	주소: <%=remote %><br>
	<% if(total == 77) { %>
		<p>🎉 77 🎉</p>
	<% } %>
</body>
</html>