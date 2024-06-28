<%@page import="com.model.DepartmentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>부서 데이터 (<a href="quiz01.jsp">다시 조회하기</a>)</h3>
	<c:if test="${dto == null}">
		<p>조회한 부서는 없는 번호입니다.</p>
	</c:if>
	<c:if test="${dto != null}">
		<table border=1 style="border-collapse: collapse; width:400px; text-align:center;">
			<tr>
				<th>부서번호</th>
				<th>부서명</th>
				<th>매니저번호</th>
				<th>부서위치번호</th>
			</tr>
			<tr>
				<td><c:out value="${dto.departmentId }" /></td>
				<td><c:out value="${dto.departmentName }" /></td>
				<td><c:out value="${dto.managerId }" /></td>
				<td><c:out value="${dto.locationId }" /></td>
			</tr>
		</table>
	</c:if>
</body>
</html>