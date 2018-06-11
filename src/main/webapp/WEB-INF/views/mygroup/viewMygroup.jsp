<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
.container{
	width:1000px;
}

</style>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnBack").click(function(){
		location.href="/mygroup/mygroup.do"	
	});
	
// 	$("#btnMygroupDelete").click(function(idx){
// 		location.href="/mygroup/mygroupDelete.do?group_no="	+idx;
// 	});
	
});
function deleteGroup(idx) {
	location.href="/mygroup/mygroupDelete.do?group_no="	+idx;
}
</script>

</head>
<body>
<div class="container">
	<h1>모임 상세정보</h1>
	<hr>
	<br>
	
	<form action="#" class="form-horizontal" style="width:800px;">
	<input type="hidden" id="group_no" value="${mygroup.group_no}">
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_id">개설자 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="u_id" name="u_id"
				readonly="readonly" value="${mygroup.u_id}"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="group_id">모임 이름 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="group_id" name="group_id"
				readonly="readonly" value="${mygroup.group_id}"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="location">지 역 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="location" name="location"
				readonly="readonly" value="${mygroup.location}"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="main_cat">분 류 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="main_cat" name="main_cat"
				readonly="readonly" value="${mygroup.main_cat}"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="">분 류 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="small_cat" name="small_cat"
				readonly="readonly" value="${mygroup.small_cat}"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="theme">인 원 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="personnel" name="personnel"
				readonly="readonly" value="${mygroup.personnel}"/>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label" for="intro">소개글 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="intro" name="intro"
				readonly="readonly" value="${mygroup.intro}"/>     
		</div>
	</div> 

	
	<div class="form-group">
		<label class="col-sm-2 control-label"></label>
		<div class="col-sm-6">
			<c:if test="${userid eq mygroup.u_id}">
				<input type="button" class="btn btn-danger" id="btnMygroupDelete" onclick="deleteGroup(${mygroup.group_no});" value="모임삭제">
			</c:if>
			<input type="button" class="btn btn-primary" id="btnBack" value="뒤로">
		</div>
	</div>
	
	
	</form>
</div>
</body>
</html>