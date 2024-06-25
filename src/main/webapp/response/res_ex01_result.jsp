<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//POST 방식 한글 처리 - request를 사용하기 전 인코딩 형식 지정
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	int age = Integer.parseInt( request.getParameter("age") );
	
	// 코드를 만나면 순식간에 이동
	if(age > 19) {
		response.sendRedirect("res_ex01_ok.jsp");
	} else {
		response.sendRedirect("res_ex01_no.jsp");
	}
	
	//자바 servlet으로 변경하기
%>