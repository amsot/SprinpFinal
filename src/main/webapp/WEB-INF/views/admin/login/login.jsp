<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자만 로그인 해주세요.</title>
<!-- 부트스트랩 선언, 코드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝 -->
</head>
<body>
<div class="container">
	
	<div class="page-header">
    <h1 class="text-center">소모임 관리자 로그인</h1>      
  	</div>
  	
  	<!-- 아이디, 비밀번호 입력 부분 -->
  	<form action="/admin/login/loginProc.do" method="post" class="form-inline">
	<div class="text-center">
  	<div class="input-group">
  		<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  		<input type="text" name="adminId" class="form-control" placeholder="ID"/>
  	</div>
  	<br>
  	<br>
  	<div class="input-group">
  	<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  		<input type="password" name="adminPw" class="form-control" placeholder="PW"/>
  	</div>
 	<!-- 아이디, 비밀번호 입력부분 종료 -->
 	
  	<br>
  	<br>
  	
  	<button class="btn">로그인</button>
  	</div>
    
    </form>
    
    <br>
    <div class="text-center">
		<a href="#">관리자가 아니세요?</a>    
    </div>


</div>
</body>
</html>