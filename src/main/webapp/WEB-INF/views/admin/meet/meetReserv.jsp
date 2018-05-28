<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteG(num){
		var res1 = confirm('정말로 모임의 정모를 삭제하시겠습니까?');
		if(res1){
			var res2 = prompt('관리자 비밀번호를 입력해주세요');
			var $form = $("<form>").attr("action","/admin/meet/meetDelete.do")
			.attr("method","post")
			.append($("<input>").attr("type","hidden").attr("name","meeting_no").attr("value",num))
			.append($("<input>").attr("type","hidden").attr("name","pw").attr("value",res2))
			.appendTo($(document.body));
			$form.submit();
		}else{
			
		}
	}

</script>

</head>
<body>
<!-- side menu -->
<div class="side">
<jsp:include page="/WEB-INF/views/admin/side/meetSide.jsp"/>
</div>
<div class="main" >
	<h3>정모 예약 관리</h3>
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
			<c:forEach items="${meetReservList }" var="i">
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
				
				<button class="btn btn-danger" onclick="deleteG('${i.meeting_no}')">삭제</button>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>


</div>

<jsp:include page="/WEB-INF/views/admin/meet/util/reservPaging.jsp"/>


</body>
</html>