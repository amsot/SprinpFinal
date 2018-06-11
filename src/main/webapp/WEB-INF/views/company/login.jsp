<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript"	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$(document).ready( function() {
	
	$("#login").click( function() {
		if( $("#com_id").val == null || $("#com_pw").val == null){
			alert("아이디와 비밀번호를 확인하세요");
			
			return;
		}
		var id= $("#com_id").val();
		var pw= $("#com_pw").val();
		
		$.ajax({
			type: "POST"
			,url: "/company/login.do"
			, dataType: "json"
			, data: {id:id,pw:pw}
			,success: function(d) {
				console.log("---------------------"+data);
				if(data){
					location.href="/company/main.do"
				}else {
					alert("아이디와 비밀번호가 일치하지 않습니다");
					
				}
			}
		});
		
	});
});
</script>
</head>
<body>

<div class="container">
	<form action="/company/main.do" method="post"	>
		<label>아이디 : <input type="text"	name="com_id" id="com_id"></label><br>
		<label>비밀번호: <input type="text" name="com_pw" id="com_pw"></label><br>
		<button class="btn btn-primary" id="login">로그인</button>
	
	
	</form>
</div>
</body>
</html>