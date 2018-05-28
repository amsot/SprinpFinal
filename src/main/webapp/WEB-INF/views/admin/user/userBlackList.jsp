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
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/userSide.jsp"/>
	
	</div>
	<div class="main">
 	 	<h3>회원 목록</h3>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>회원 번호</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userBlackList }" var="c">
					<tr>
						<td>${c.u_list_no }</td>
						<td><a href="/admin/user/userDetail.do?u_no=${c.u_no }">${c.u_id }</a></td>
						<td>${c.u_no }</td>
						<td>${c.u_name }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>	
<jsp:include page="/WEB-INF/views/admin/user/util/blackPaging.jsp"/>
</body>
</html>