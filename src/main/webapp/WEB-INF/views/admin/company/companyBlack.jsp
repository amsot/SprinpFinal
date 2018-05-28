<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/companySide.jsp"/>
	</div>
	<div class="main">
 	 	<h3>제휴 업체 제재</h3>
 	 	<table class="table" style="width:1100px;">
 	 	<tr>
 	 		<th>제휴 업체 번호</th>
 	 		<c:if test="${!empty company.com_no }">
 	 		<td><input type="text" name="com_no" value="${company.com_no }"/></td>
 	 		</c:if>
 	 		<c:if test="${empty company.com_no }">
 	 		<td><input type="text" name="com_no"/></td>
 	 		</c:if>
 	 	</tr>
 	 	</table>
 	</div>
</div>
</body>
</html>