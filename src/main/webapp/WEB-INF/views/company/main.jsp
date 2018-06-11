<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- style -->
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript"	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btnJoin").click(function() {
			location.href = "/company/join.do";
		});
		$("#btnLogin").click(function() {
			location.href = "/company/login.do";
		});

		$("#btnLogout").click(function() {
			location.href = "/company/logout.do";
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>제휴업체 회원가입 페이지</h1>
		<br>
		<hr>

		<br>
		




		<div class='w3-sidebar w3-collapse' id='sidenav'>
			<div id='leftmenuinner'>
				<!--     <div class='w3-light-grey' id='leftmenuinnerinner'> -->
				<!--       <a href='javascript:void(0)' onclick='close_menu()' class='w3-button w3-hide-large w3-large w3-display-topright' style='right:16px;padding:3px 12px;font-weight:bold;'>&times;</a> -->
		<!-- 비로그인상태  -->
		<c:if test="${empty com_id }">
			<button id="btnLogin" class="btn btn-warning">로그인하기</button>
			<button id="btnJoin" class="btn btn-info">협력업체 회원가입하기</button>

		</c:if>
				<!-- 로그인 상태  -->
				<c:if test="${!empty com_id }">

					${com_id }님이 로그인 하셨습니다.
				<button id="btnLogout" class="btn btn-succenss">로그아웃</button>
					<br>

				<h2 class="left">
					<span class="left_h2">마이페이지</span>
				</h2>
				<a target="_top" href="default.asp">업체정보 수정</a><br> 
				<a target="_top" href="/place/placeInsert.do">대여 장소 등록</a><br> 
				<a target="_top" href="bootstrap_typography.asp">대여 장소 정보 수정</a>
				<h2 class="left">
					<span class="btnList"><a target="_top"
						href="/place/placeList.do">장소 목록</a></span>
				</h2>
				</c:if>
				
				
			</div>
		</div>
	</div>

</body>
</html>
