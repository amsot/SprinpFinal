<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
<!-- 제이쿼리  선언, 코드-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- 제이쿼리 끝 -->

<!-- 부트스트랩 선언, 코드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝 -->



</head>
<body>
<div class="jumbotron" style="margin-bottom:0px;">
		<h1 class="text-center"><a href="/admin/main.do">관리자 페이지</a></h1>
	</div>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><a href="/admin/group/groupList.do">모임 관리</a></li>
				<li><a href="/admin/user/userList.do">회원 관리</a></li>
				<li><a href="/admin/meet/meetReserv.do">정모 관리</a></li>
				<li><a href="/admin/company/companyList.do">제휴 관리</a></li>
				<li><a href="/admin/main/mainNotice.do">사이트 관리</a></li>
			</ul>
		</div>
	</nav>

<div class="container">

</div>

</body>
</html>