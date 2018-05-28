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
<script type="text/javascript">
	function deleteM(num){
		location.href="/admin/meet/meetEndDelete.do?meeting_no="+num;
	}

</script>

</head>
<body>
<!-- side menu -->
<div class="side">
<jsp:include page="/WEB-INF/views/admin/side/meetSide.jsp"/>
</div>
<div class="main" >
	<h3>종료된 정모 목록</h3>
	<table class="table" style="width:1100px;">
		<thead>
			
			<tr>
				<th>번호</th>
				<th>정모 번호</th>
				<th>시작 날짜</th>
				<th>종료 날짜</th>
				<th>장소</th>
				<th>모임 이름</th>
				<th>모임 번호</th>
				<th>인원 수</th>
				<th>상태</th>
				<th>기타</th>
				<th>관리</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${endMeetList }" var="i">
			<tr>
				<td>${i.meeting_list_no }</td>
				<td>${i.meeting_no }</td>
				<td><fmt:formatDate value="${i.date_start }" pattern="yy-MM-dd"/></td>
				<td><fmt:formatDate value="${i.date_end }" pattern="yy-MM-dd"/></td>
				<td>${i.reservation_location }</td>
				<td>${i.group_id }</td>
				<td>${i.group_no }</td>
				<td>${i.personnel }</td>
				<td>${i.status }</td>
				<td>
				<a href="#">정모 확인하러 가기</a>
				</td>
				<td>
				
				<button class="btn btn-danger" onclick="deleteM('${i.meeting_no}')">삭제</button>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>


</div>

<jsp:include page="/WEB-INF/views/admin/meet/util/reservPaging.jsp"/>




</body>
</html>