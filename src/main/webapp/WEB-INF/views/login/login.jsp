<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript"	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#id").focus();

	});
</script>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>로그인페이지</h1>
		<form action="/login/main.do" method="post">
			
			<label>아이디 :<input type="text" name="userid" id="userid"></label><br>
			<label>비밀번호 :<input type="text" name="userpw" id="userpw"></label><br>
			<input type="submit" value="로그인하기">
		</form>
	</div>

</body>
</html>