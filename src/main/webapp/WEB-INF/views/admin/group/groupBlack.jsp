<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 선언, 코드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝 -->

</head>
<body>
<div class="content">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/groupSide.jsp"/>
	</div>
	<div class="main" style="margin-left: 300px;">
 	 	<h3>모임 제제</h3>
 	 	<form action="/admin/group/groupBlock.do" method="post">
 	 	<div>
 	 	그룹 번호 : 
 	 	<c:if test="${!empty group.group_no }">
 	 	<input type="text" name="group_no" value="${group.group_no }"/><br>
 	 	</c:if>
 	 	<c:if test="${empty group.group_no }">
 	 	<input type="text" name="group_no"/><br>
 	 	</c:if>
 	 	
 	 	제재 사유 : <input type="text" name="reason"/><br>
 	 	제재 날짜<br>
 	 	시작 날짜 : <input type="date" name="blocked_at"/><br>
 	 	종료 날짜 : <input type="date" name="blocked_end"/><br>
 	 	<button>제재</button>	 	
 	 	
 	 	</div>
 	 	</form>
 	</div>
</div>






</body>
</html>