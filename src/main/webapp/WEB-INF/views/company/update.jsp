<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<!-- style -->
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript"	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- Bootstrap -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var phone = '${update.com_phone}';
	var splitted = phone.split(",");
	
	$("#hp1").val(splitted[0]);
	$("#hp2").val(splitted[1]);
	$("#hp3").val(splitted[2]);
	
	$("#btncancle").click( function() {
		location.href='/company/main.do';
	});
	$("#btnComUpdate").click( function() {
		 if( $("#com_pw").val() == ""|| $("#com_pwcheck").val == ""){
			 alert("비밀번호를 입력하세요 ");
			 $("#com_pw").focus();
			 return false;

		 }else if ( !($("#com_pw").val() == $("#com_pwcheck").val() ) ){
			 alert("비밀번호가 일치하지 않습니다");
			 $("#com_pwcheck").focus();
			 return false;
		 }else if( $("#com_name").val() == ""){
			 alert("이름을 입력하세요 ");
			 $("#com_name").focus();
			 return false;
		 }else if (  $("#com_phone").val() == "" ){
			 alert("연락처를 입력하세요");
			 $("#com_phone").focus();
			 return false;
		 }else if($("#com_email").val()==""){
				alert("이메일을 입력하세요");
				$("#com_email").focus();
				 return false;
			}
	});
});
</script>
<body>

<div class="container">

<form action="/company/update.do" id="joinform" method="post" >
			<table width="550" align="center"  >
			
			<tr>
				<td height="40" align="center"><strong>패스워드 : </strong></td>
				<td> <input type="password" name="com_pw" id="com_pw" value="${update.com_pw }"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>패스워드 확인 : </strong></td>
				<td> <input type="password" name="com_pwcheck" id="com_pwcheck" value="${update.com_pw }"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>이름 : </strong></td>
				<td> <input type="text" name="com_name" id="com_name" value="${update.com_name }"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>전화번호 : </strong></td>
				<td>
					<select id="hp1" name="com_phone" style="width:70;">
					   <option value="010"  selected> 010 </option>
					   <option value="011"> 011 </option>
					   <option value="016"> 016 </option>
					   <option value="017"> 017 </option>
					   <option value="018"> 018 </option>
					   <option value="019"> 019 </option>
					</select>
					-
					<input type="text" id="hp2" name="com_phone" size="4" maxlength="4">
					-
					<input type="text" id="hp3" name="com_phone" size="4" maxlength="4">
					<input type="hidden" id="com_phone" name="com_phone" >
				</td>

			</tr>
			<tr>
				<td height="40" align="center"><strong>이메일 : </strong></td>
				<td> <input type="text" name="com_email" id="com_email" value="${update.com_email }"> 
					@
					<select id="em1" name="em1" style="width:100;">
						<option value="daum.net" selected> daum.net </option>
						<option value="naver.com" selected> naver.com </option>
						<option value="gmail.com" selected> gmail.com </option>
					</select>
				</td>
			</tr>
			
			</table>
			<button class="btn btn-primary" id="btnpComUpdate">수정하기</button>
			<input type="button" class="btn btn-primary" id="btncancle" value="취소">
			
		</form>
</div>
</body>
</html>