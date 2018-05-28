<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 제이쿼리  선언, 코드-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- 제이쿼리 끝 -->
<!-- 부트스트랩 선언, 코드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝 -->
<title>Insert title here</title>
<script type="text/javascript">
	function changeStop(num){
		location.href="/admin/group/groupNoBlock.do?group_no="+num;
		
	}
</script>

</head>
<body>
<div class="content">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/groupSide.jsp"/>
	</div>
	<div class="main" style="margin-left: 300px;">
 	 	<h3>모임 자세히</h3>
		<table class="table" style="width:1100px;">
			<tr>
				<th>그룹 번호</th>
				<td>${group.group_no }</td>
			</tr>
			<tr>
				<th>그룹 이름</th>
				<td>${group.group_id }</td>
			</tr>
			<tr>
				<th>기반 지역</th>
				<td>${group.location }</td>
			</tr>
			<tr>
				<th>모임장</th>
				<td>${group.manager_id }</td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td>${group.theme }</td>
			</tr>
			<tr>
				<th>인원수</th>
				<td>${group.personnel }</td>
			</tr>
			<tr>
				<th>등록 날짜</th>
				<td><fmt:formatDate value="${group.regdate }" pattern="yy-MM-dd HH:mm:ss"/></td>
			</tr>
			<tr>
				<th>모임 홈페이지</th>
				<td><a href="#">▶  ${group.group_id } 로 이동하기 </a></td>
			</tr>
			<tr>
				<th>그룹 제재 상태</th>
				<td>
				<c:if test="${!empty group.blocked_at}">★제재 날짜 : ${group.blocked_at } ~ ${group.blocked_end }★</c:if>
				<c:if test="${empty group.blocked_at}">★활동중★</c:if>
				</td>
				
			</tr>
			<tr>
				<th>모임 제재</th>
				<td>
				<c:if test="${!empty group.blocked_at}">
				<button class="button btn-danger" onclick="changeStop('${group.group_no}')" >제재풀기</button>
				</c:if>
				<c:if test="${empty group.blocked_at}">
				<button class="button btn-danger">
				<a href="/admin/group/groupBlack.do?group_no=${group.group_no }">
				제재하기</a></button>
				</c:if>
				</td>
			</tr>
		</table>
		<hr>
		<h4>★ ${group.group_id } 의 정모 ★</h4>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
				<th>정모 번호</th>
				<th>정모 시작일</th>
				<th>정모 종료일</th>
				<th>정모 장소</th>
				<th>인원</th>
				<th>상태</th>
				</tr>
			</thead>
				<c:forEach items="${meetList }" var="i">
					<tr>
						<td>${i.meeting_no }</td>
						<td><fmt:formatDate value="${i.date_start }" pattern="yy-MM-dd"/></td>
						<td><fmt:formatDate value="${i.date_end }" pattern="yy-MM-dd"/></td>
						<td>${i.reservation_location }</td>
						<td>${i.personnel }</td>
						<td>${i.status }</td>
					</tr>
				</c:forEach>
		</table>
	</div>
</div>


</body>
</html>