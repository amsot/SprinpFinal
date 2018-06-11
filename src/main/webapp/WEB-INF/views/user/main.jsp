<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#btnLogin").click(function(){
		location.href = "/user/login.do";
	});
	$("#btnJoin").click(function(){
		location.href = "/user/join.do";
	});
	$("#btnLogout").click(function(){
		location.href = "/user/logout.do";
	});
	$("#btnMygroup").click(function(){
		location.href = "/mygroup/mygroup.do";
	});
	$("#btnEdit").click(function(){
		location.href = "/user/editUserInfo.do";
	});
	
});


</script>
<style type="text/css">
.effect img {
    position: relative;
    display: inline-block;
    border-radius: 50%;
    width: 200px;
    height: 200px;
}

</style>
</head>
<body>
<h1>메인 페이지</h1>
<hr>
<div class="effect">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEPjcXo0uPYMC_4Ls3J2TrryWVOIfPqEB0RlOh83WjtDb0nLicbQ">
</div>
<br>

<c:if test="${empty login }">
	<button id="btnLogin">로그인</button>
	<button id="btnJoin">회원가입</button>
</c:if>
<c:if test="${login }">
	<button id="btnLogout">로그아웃</button>
	<button id="btnEdit">회원정보 수정</button><br><br>
	<button id="btnMygroup">내모임</button>
</c:if>
	
</body>
</html>