<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	function modifyB(num){
		location.href="/admin/main/mainNoticeModify.do?board_no="+num;
	}
	
	function deleteB(num){
		location.href="/admin/main/mainNoticeDelete.do?board_no="+num;
	}


</script>
</head>
<body>
<!-- side menu -->
<div class="side">
<jsp:include page="/WEB-INF/views/admin/side/mainSide.jsp"/>
</div>
<div class="main">
	<h3>공지사항</h3>
	<table class="table" style="width:1100px;">
		<tr>
			<th>글 제목</th>
			<td>${board.board_title }</td>
		</tr>
		<tr>
			<th>업로드된 파일</th>
			<td>${board.board_file }</td>
		</tr>
		<tr>
			<th>날짜</th>
			<td><fmt:formatDate value="${board.board_regdate }" pattern="yy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<th>글 내용</th>
			<td>${board.board_content }</td>
		</tr>
		<tr>
			<th>관리</th>
			<td colspan="2">
			<button class="btn btn-primary" onclick="modifyB('${board.board_no}')">수정</button>
			<button class="btn btn-danger" onclick="deleteB('${board.board_no}')">삭제</button>
			</td>
		</tr>
		
	</table>
</div>
</body>
</html>