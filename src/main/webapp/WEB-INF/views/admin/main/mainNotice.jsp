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
	function deleteB(num){
		location.href="/admin/main/mainNoticeDelete.do?board_no="+num;
		
	}
</script>
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/mainSide.jsp"/>
	</div>
	<div class="main">
 	 	<h3>공지사항 목록</h3>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
					<th>글 번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${mainNoticeList }" var="c">
				<tr>
					<td>${c.board_list_no }</td>
					<td><a href="/admin/main/mainNoticeDetail.do?board_no=${c.board_no }">${c.board_title }</a></td>
					<td><fmt:formatDate value="${c.board_regdate }" pattern="yy-MM-dd HH:mm:ss"/></td>
					<td><button class="btn btn-danger" onclick="deleteB('${c.board_no}')">삭제</button></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/admin/main/util/noticePaging.jsp"/>	
	<form action="/admin/main/mainNotice.do" method="get">
		<div id="search"  style="margin-left: 430px;">
		<input type="text" name="search"/>
		<button class="btn btn-primary">검색</button>
		</div>
		</form>


</body>
</html>