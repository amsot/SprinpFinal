<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- Bootstrap -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btnLogin").click(function() {
		location.href="/login/login.do";
	});
	
	$("#btnJoin").click(function() {
		location.href="/login/join.do";
	});
	
	$("#btnLogout").click(function() {
		location.href="/login/logout.do";
	});
	$("#btnList").click(function() {
		location.href="/board/list.do";
	});
	
	
});
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>제휴업체 회원가입 페이지 </h1><br>
<hr>

<br>
<!-- 비로그인상태  -->
<c:if test="${empty userid }">
<button id="btnLogin" class="btn btn-warning">로그인하기</button>
<button id="btnJoin" class="btn btn-info">협력업체 회원가입하기</button>

</c:if>

<!-- 로그인 상태  -->
<c:if test="${!empty userid }">

${userid }님이 로그인 하셨습니다.
<button id="btnLogout" class="btn btn-succenss">로그아웃</button><br>
</c:if>
<button id="btnList" class="btn btn-primary">목록</button>


</div>
</body>
</html>