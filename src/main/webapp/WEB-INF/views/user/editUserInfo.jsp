<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	$("#cancel").click(function(){
		location.href = "/user/main.do";
	});
	$("#bye").click(function(){
		location.href = "/user/delete.do?u_no=${user.u_no}";
	});
});
</script>

</head>
<body>

<div class="container"  style="width:600px;">
<h1>회원정보 수정</h1>
<hr>
<div>
<form action="/user/editUserInfo.do" method="post"
	class="form-horizontal">
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_no"></label>
		<div class="col-sm-6">
			<input type="hidden" class="form-control" 
				id="u_no" name="u_no" value="${user.u_no }"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_id">아이디 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_id" name="u_id" placeholder="Id" value="${user.u_id }" readonly="readonly"/>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_pw">패스워드 : </label>
		<div class="col-sm-6">
			<input type="password" class="form-control" 
				id="u_pw" name="u_pw" value="${user.u_pw }" placeholder="Password"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_name">이름 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_name" name="u_name" placeholder="Name" value="${user.u_name }" readonly="readonly"/>
		</div>
	</div>
		
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_nick">닉네임 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_nick" name="u_nick" value="${user.u_nick }" placeholder="Nick"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_birthdate">생년월일 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_birthdate" name="u_birthdate" placeholder="Birthdate 예) 0000년00월00일" value="${user.u_birthdate }" readonly="readonly"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_phone">전화번호 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_phone" name="u_phone" placeholder="Phone" value="${user.u_phone }"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_address">주소 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_address" name="u_address" placeholder="Address" value="${user.u_address }"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_email">이메일 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_email" name="u_email" placeholder="Email" value="${user.u_email }"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_sex">성별 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_sex" name="u_sex" placeholder="Sex(Gender)" value="${user.u_sex }" readonly="readonly"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label">관심분야 : </label>
		<div class="col-sm-6">
			<select style="height:30px; width:100px;" id="u_interests" name="u_interests">
				<option>${user.u_interests}</option>
				<option value="문화">문화</option>
				<option value="운동">운동</option>
				<option value="맛집">맛집</option>
				<option value="음악">음악</option>
			</select> 
		</div>
	</div>
	
	<br>	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">		
			<button class="btn btn-primary">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" id="cancel"
				class="btn btn-danger" value="취소"/>
			<input type="button" id="bye"
				class="btn btn-danger" value="회원탈퇴"/>
		</div>
	</div>
</form>
</div>
</div>

</body>
</html>