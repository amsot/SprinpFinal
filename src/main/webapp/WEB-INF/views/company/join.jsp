<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.js"></script>
	
<script type="text/javascript">
 $(document).ready(function() {
	 $("#idcheck").click(function() {
		if($("#com_id").val() == null || $("#com_id").val() ==""){
			alert("아이디를 입력하세요");
			$("#com_id").focus();
			return ;
		}else{
			id = $("#com_id").val();
			$.ajax({
				type: "POST"
				, url: '/company/idCheck.do'
				, dataType: "json"
				, data: {"com_id":$("#com_id").val()}
				, success: function(data){
					console.log("---------------------"+data);
					if(data){
						alert("사용 가능한 아이디 입니다");
						idCheck = true;
					}else {
						alert("사용할 수 없는 아이디입니다");
						idCheck = false;
						$("#com_id").focus();
					}
				}, error:function(request, error) {
					console.log(request.responseText);
					console.log(error.printStackTrace);
				}
				
					
			});
		}
	 });
	 $("#join").click( function() {
			
		 if(!idcheck){
			 alert("아이디 중복확인을 해주세요")
			 $("#idcheck").focus();
			 return false;

		 }else if( $("#com_pw").val() == "" || $("#com_pwcheck").val == ""){
			 alert("비밀번호를 입력하세요");
			 $("#com_pw").focus();
			 return false;

		 }else if ( !($("#com_pw").val() == $("#com_pwcheck").val() ) ){
			 alert("비밀번호가 일치하지 않습니다");
			 $("#com_pw").focus();
			 return false;
		 }else if($("#com_email").val()==""){
				alert("이메일을 입력하세요");
				$("#com_email").focus();
				return false;
			}else if($("#com_name").val()==""){
				alert("이름을 입력하세요");
				$("#com_name").focus();
				return false;
			}
	 });
 });
 


</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1>협력업체 회원가입페이지 입니다</h1>
	<hr>

		<form action="/company/join.do" id="joinform" method="post" >
			<table width="550" align="center"  cellpadding="5">
			<tr>
				<td height="40" align="center"><strong>아이디 : </strong></td>
				<td><input type="text" name="com_id" id="com_id"> &nbsp; <input type="button" class="btn btn-primary" id=idcheck value="중복확인"><br></td>

			</tr>
			<tr>
				<td height="40" align="center"><strong>패스워드 : </strong></td>
				<td> <input type="password" name="com_pw" id="com_pw"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>패스워드 확인 : </strong></td>
				<td> <input type="password" name="com_pwcheck" id="com_pwcheck"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>이름 : </strong></td>
				<td> <input type="text" name="com_name" id="com_name"> </td>
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
					<input type="text" id="com_phone" name="com_phone" size="4" maxlength="4">
					-
					<input type="text" id="com_phone" name="com_phone" size="4" maxlength="4">
					<input type="hidden" id="com_phone" name="com_phone" >
				</td>

			</tr>
			<tr>
				<td height="40" align="center"><strong>이메일 : </strong></td>
				<td> <input type="text" name="com_email" id="com_email"> 
					@
					<select id="em1" name="em1" style="width:100;">
						<option value="daum.net" selected> daum.net </option>
						<option value="naver.com" selected> naver.com </option>
						<option value="gmail.com" selected> gmail.com </option>
					</select>
				</td>
			</tr>
			<tr>
			<td class="btn pull-right"><button class="btn btn-primary" id=cancle() >취소</button>
			<button class="btn btn-primary" id=join>회원가입</button><br></td>
			</tr>
			</table>
		</form>

	</div>
</body>
</html>