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
var count =0;

function idCheck(){
	var text = $("com_id").val();
	var regexp = /[0-9a-aA-Z]/; //숫자,영문,특수문자 
	
	for(var i=0; i<text.length; i++){
		if( text.charAt(i)!=""&&regexp.test( text.charAt(i)) == false){
			alert("한글이나 특수문자는 입력이 불가합니다");
			return false;
		}
	}
	overCheck();	
}
function overlapcheck(){
	var param = "com_id" + "=" +$("com_id").val();
	if($("com_id").val() == '' ||$("com_id").val()==null)
		{ 
		  alert("아이디를 입력하세요");
		  return false;
		}

	})
	
}
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1>협력업체 회원가입페이지 입니다</h1>
	<hr>

		<form action="/login/join.do" method="post">
			<table width="550" align="center"  cellpadding="5">
			<tr>
				<td height="40" align="center"><strong>아이디 : </strong></td>
				<td><input type="text" name="com_id" id="com_id"> &nbsp; <button class="btn btn-primary"  onclick='idCheck()'>중복확인</button><br></td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>패스워드 : </strong></td>
				<td> <input type="text" name="com_pw" id="com_pw"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>패스워드 확인 : </strong></td>
				<td> <input type="text" name="com_pwcheck" id="com_pwcheck"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>이름 : </strong></td>
				<td> <input type="text" name="com_name" id="com_name"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>전화번호 : </strong></td>
				<td>
					<select id="hp1" name="hp1" style="width:70;">
					   <option value="010"  selected> 010 </option>
					   <option value="011"> 011 </option>
					   <option value="016"> 016 </option>
					   <option value="017"> 017 </option>
					   <option value="018"> 018 </option>
					   <option value="019"> 019 </option>
					</select>
					-
					<input type="text" id="hp2" name="hp2" size="4" maxlength="4">
					-
					<input type="text" id="hp3" name="hp3" size="4" maxlength="4">
					<input type="hidden" id="com_phone" name="com_phone" >
				</td>

			</tr>
			<tr>
				<td height="40" align="center"><strong>이메일 : </strong></td>
				<td> <input type="text" name="com_email" id="com_email"> </td>
			</tr>
			<tr>
			<td><input type="submit" value="회원가입하기 "><br></td>
			</tr>
			</table>
		</form>

	</div>
</body>
</html>