<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//POST 방식 한글 처리 - request를 사용하기 전 인코딩 형식 지정
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	// BMI지수를 처리
	// BMI공식 = kg / (cm/100 * cm/100)  -> 문자열이기 때문에 형변환 진행(실수)
	double cm = Double.parseDouble(height);
	double bmi = Double.parseDouble(weight) / (cm/100 * cm/100);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>넘어온 데이터</h3>
	이름 : <%=name %><br><br>
	신장 : <%=height %><br><br>
	몸무게 : <%=weight %><br><br>
	BMI : <%=String.format("%.2f", bmi) %><br><br>
	당신은 [<%=(bmi >= 25) ? "과체중" : (bmi <= 18) ? "저체중" : "정상" %>]입니다.<br>
</body>
</html>