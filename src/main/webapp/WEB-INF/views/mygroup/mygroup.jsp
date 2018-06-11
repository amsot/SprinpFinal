<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#Registration").click(function(){
		location.href = "/mygroup/groupRegistration.do"
	});
});

</script>


<style type="text/css">
.container{
	width:1000px;
}
table, th {
	text-align: center;
}

img{
	width:205px;
	height:245px;
	margin-bottom: 50px;
}
#more{
	width:500px;
}
</style>

</head>
<body>
<div class="container">
<h1>내 모임</h1>
<hr>
<a href="/user/main.do">메인화면</a>
&nbsp;<input type="button" class="btn btn-primary pull-right" id="Registration" value="모임 등록"><br><br>
<c:forEach items="${list }" var="i">

<div class="col-sm-4 control-label">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEPjcXo0uPYMC_4Ls3J2TrryWVOIfPqEB0RlOh83WjtDb0nLicbQ">
</div>

<div class="info col-sm-8 control-label">
<%--  	<input type="text" value="${u_nick}">  --%>
<%--  	${sessionScope.usernick} --%>
	<h1>${i.group_no}</h1>
	<h1>${i.group_id}</h1>
	<h3>대 분 류 : ${i.main_cat}</h3>
	<h3>소 분 류 : ${i.small_cat}</h3>
	<h3>지 역 : ${i.location}</h3>
	<h3>소개글</h3><br>
	&nbsp;&nbsp;&nbsp;${i.intro}
<br><br>
<a href="/mygroup/viewMygroup.do?group_no=${i.group_no}" onclick=""><button id="more" class="btn"><%-- <%=shop.getS_name() %>  --%>더보기</button></a>
</div>

</c:forEach>
<h1>&nbsp;</h1>
<br><br>

</div>
</body>
</html>