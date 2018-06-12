<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/main-59fe90f3f9be1ce624ecdbc78f81339ba90528a2d6b5ad2f18a9c0638ffc34a1.css">
<!-- <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/web-da2841c18158e75bf236109ae20fd2d57300975a87478d63ddca64ff63492bb9.css"> -->
<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/desktop-d760397406f1545e4592b2ea79bac5508fda97a4bd63562b92061d02bd0f6711.css">
<script type="text/javascript" src="/resources/bootstrap/js/bootstrap.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/jquery-ui.css" />
<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#close").click(function(){
		self.close();
	});
});
</script>
</head>
<body>
<h1>정모 목록</h1>
<div data-page="reviews-index" class="page product_57b177c8e76f681b4a000003 reviews index">
	<div class="page-content">
		<div class="page-content-inner">
			<div class="content-block product-block">
				<a href="" id="close">
					<i class="material-icons arrow_back"></i>
					모임 상세 페이지로 돌아가기
				</a>        
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>아이디</th>
						<th></th>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="i">
					<tr>
						<td>${i.u_id }</td>
						<td><a href="/group/secession.do?group_no=${i.group_no }&u_id=${i.u_id}">탈퇴</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div id="mask"></div>
</body>
</html>