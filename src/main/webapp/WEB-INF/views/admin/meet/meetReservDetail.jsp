<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- side menu -->
<div class="side">
<jsp:include page="/WEB-INF/views/admin/side/meetSide.jsp"/>
</div>
<div class="main">
	<h3>정모 자세히</h3>
	<table class="table" style="width:1100px;">
		<tr>
			<th>제목</th>
			<td>${board.board_title }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${board.board_title }</td>
		</tr>
	</table>
</div>
</body>
</html>