<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

window.onload = function() {
	document.getElementById("cancel").onclick = function() {
		history.back(-1);
	};
};

</script>
<!-- 
</head>
<body>
<div class="container">
<h1>로그인</h1>
<hr>
<div>
<form action="/user/login.do" method="post" class="form-horizontal">
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_id">아이디 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_id" name="u_id" placeholder="id"/>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_pw">패스워드 : </label>
		<div class="col-sm-6">
			<input type="password" class="form-control" 
				id="u_pw" name="u_pw" placeholder="password"/>
		</div>
	</div>
		
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">		
			<input type="submit" id="login" class="btn btn-primary" value="로그인" method="post"/>
			<input type="reset" id="cancel"
				class="btn btn-danger" value="취소"/>
				
		</div>
	</div>
	</form>
	</div>
	</div>
	 -->
	
<div class="page-header" style="background: url(/resources/css/assets/img/banner1.jpg);">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="breadcrumb-wrapper">
<h2 class="product-title">My Account</h2>
<ol class="breadcrumb">
<li><a href="/tiles/main.do"><i class="ti-home"></i> Home</a></li>
<li class="current">My Account</li>
</ol>
</div>
</div>
</div>
</div>
</div>

<div id="content" class="my-account">
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-6 cd-user-modal">
<div class="my-account-form">
<ul class="cd-switcher">
<li><a class="selected" href="#0">LOGIN</a></li>
<li><a href="#0">REGITER</a></li>
</ul>

<div id="cd-login" class="is-selected">
<div class="page-login-form">
<form role="form" class="login-form">
<div class="form-group">
<div class="input-icon">
<i class="ti-user"></i>
<input type="text" id="sender-email" class="form-control" name="email" placeholder="Username">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="ti-lock"></i>
<input type="password" class="form-control" placeholder="Password">
</div>
</div>
<button class="btn btn-common log-btn">Login</button>
<div class="checkbox-item">
<div class="checkbox">
<label for="rememberme" class="rememberme">
<input name="rememberme" id="rememberme" value="forever" type="checkbox"> Remember Me</label>
</div>
<p class="cd-form-bottom-message"><a href="#0">Lost your password?</a></p>
</div>
</form>
</div>
</div>

<div id="cd-signup">
<div class="page-login-form register">
<form role="form" class="login-form">
<div class="form-group">
<div class="input-icon">
<i class="ti-user"></i>
<input type="text" id="sender-email" class="form-control" name="name" placeholder="Username">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="ti-email"></i>
<input type="text" id="sender-email" class="form-control" name="email" placeholder="Email">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="ti-lock"></i>
<input type="password" class="form-control" placeholder="Password">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="ti-lock"></i>
<input type="password" class="form-control" placeholder="Repeat Password">
</div>
</div>
<button class="btn btn-common log-btn">Register</button>
</form>
</div>
</div>
<div class="page-login-form" id="cd-reset-password"> 
<p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>
<form class="cd-form">
<div class="form-group">
<div class="input-icon">
<i class="ti-email"></i>
<input type="text" id="sender-email" class="form-control" name="email" placeholder="Email">
</div>
</div>
<p class="fieldset">
<button class="btn btn-common log-btn" type="submit">Reset password</button>
</p>
</form>
<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
</div> 
</div>
</div>
</div>
</div>
</div>
</head>
</body>
</html>