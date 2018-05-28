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
	function deleteG(num){
		console.log(num);
		var res1 = confirm('정말로 모임을 삭제하실겁니까? (모든 데이터가 없어집니다.)');
		if(res1){
			var res2 = prompt('해당 모임을 삭제하려면 관리자의 비밀번호를 입력하세요.');
			var $form = $("<form>").attr("action", "/admin/group/groupDelete.do")
			.attr("method", "post")
			.append($("<input>").attr("type", "hidden").attr("name", "group_no").attr("value", num))
			.append($("<input>").attr("type", "hidden").attr("name", "pw").attr("value", res2))
			.appendTo($(document.body));			
			$form.submit();
			
			
		}else{
			
		}
	}

</script>
</head>
<body>
<div class="content">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/groupSide.jsp"/>
	</div>
	<div class="main" style="margin-left: 300px" >
 	 	<h3>모임 목록</h3>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>모임 이름</th>
					<th>모임 번호</th>
					<th>모임장</th>
					<th>카테고리</th>
					<th>인원</th>
					<th>기반 지역</th>
					<th>개설 날짜</th>
					<th>관리</th>
					<th>기타</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${groupList }" var="i">
					<tr>
						<td>${i.group_list_no }</td>
						<td><a href="/admin/group/groupDetail.do?group_no=${i.group_no}">${i.group_id }</a></td>
						<td>${i.group_no }</td>
						<td>${i.manager_id }</td>
						<td>${i.theme }</td>
						<td>${i.personnel }</td>
						<td>${i.location }</td>
						<td><fmt:formatDate value="${i.regdate }" pattern="yy-MM-dd HH:mm:ss"/></td>
						<td>
						<button class="btn btn-danger" onclick="deleteG('${i.group_no}')">삭제</button>
						</td>
						<td><a href="#">▶ ${i.group_id } 으로 이동</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<jsp:include page="/WEB-INF/views/admin/group/util/groupPaging.jsp"/>
		<div id="search"  style="margin-left: 430px;">
		<input type="text" name="search"/><button>검색</button>
		</div>
	</div>
</div>


</body>
</html>