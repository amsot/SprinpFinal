<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리  선언, 코드-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- 제이쿼리 끝 -->
<!-- 부트스트랩 선언, 코드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝 -->
<script type="text/javascript">
	function detail(no){
		location.href="/admin/user/userDetail.do?u_no="+no;
	}

</script>
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
					<th>닉네임</th>
					<th>성별</th>
					<th>등급</th>
					<th>가입된 모임</th>
					<th>가입 날짜</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userList }" var="i">
					<tr>
						<td>${i.u_list_no }</td>
						<td>${i.u_id }</td>
						<td>${i.u_no }</td>
						<td>${i.u_name }</td>
						<td>${i.u_nick }</td>
						<td>${i.u_sex }</td>
						<td>${i.u_grade }</td>
						<td>${i.group_no }</td>
						<td><fmt:formatDate value="${i.u_regdate }" pattern="yy-MM-dd HH:mm:ss"/></td>
						<td><button class="btn btn-primary" onclick="detail('${i.u_no}')">
						자세히</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	</div>

<jsp:include page="/WEB-INF/views/admin/user/paging.jsp"/>
</div>

</body>
</html>