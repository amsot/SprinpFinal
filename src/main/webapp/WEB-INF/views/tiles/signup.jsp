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

window.onload = function() {
	document.getElementById("cancel").onclick = function() {
		history.back(-1);
	};
};

$(document).ready(function(){
	var idCheck = false;
	var pwCheck = false;
	
	 $("#u_birthdate").blur(function(){
    	var num = $("#u_birthdate").val();
    	u_birthdate_blur(num);
	 });

    $("#u_birthdate").click(function(){
    	var num = $("#u_birthdate").val();
    	u_birthdate_focus(num);
    });
	
	function u_birthdate_focus(num) {
		num = num.replace(/[^0-9]/g, '');
		$("#u_birthdate").val(num);
	}

	function u_birthdate_blur(num) {
		num = num.replace(/[^0-9]/g, '');
		var tmp = '';
		tmp += num.substr(0, 6);
		$("#u_birthdate").val(tmp);
	}
	$("#u_phone").blur(function(){
    	var num = $("#u_phone").val();
    	u_phone_blur(num)
	 });

    $("#u_phone").click(function(){
    	var num = $("#u_phone").val();
    	u_phone_focus(num);
    });
	
	function u_phone_focus(num) {
		num = num.replace(/[^0-9]/g, '');
		$("#u_phone").val(num);
	}

	function u_phone_blur(num) {
		num = num.replace(/[^0-9]/g, '');
		var tmp = '';
		tmp += num.substr(0, 3);
		tmp += '-';
		tmp += num.substr(3, 4);
		tmp += '-';
		tmp += num.substr(7, 4);
		$("#u_phone").val(tmp);
	}

	$("#idCheckbtn").click(function(){
		if($("#u_id").val()==null||$("#u_id").val()==""){
			alert("아이디를 입력하세요");
			return false;
		}else{
			$.ajax({
				type:'POST',
				url:'/user/idCheck.do',
				dataType:"json",
				data:{
					"u_id":$("#u_id").val()
				}, success:function(data){
					if(data){
						alert("사용 가능한 아이디입니다!");
						idCheck = true;
					}else{
						alert("사용할 수 없는 아이디입니다!");
						idCheck = false;
						$("#u_id").focus();
					}
// 					alert("ajax 연결");
				}, error:function(request, error){
					console.log(request.responseText);
					console.log(error.printStackTrace);
				}
			});
		}
	});
	$("#pwCheckBtn").click(function(){
		var pw = $("#u_pw").val();
		if($("#u_pw").val()==null||$("#u_pw").val()==""||$("#pwCheck").val()==null||$("#pwCheck").val()==""){
			alert("비밀번호를 입력하세요");
			return false;
		}else if(pw.length<8){
			alert("비밀번호는 8자 이상 작성해주세요");
			return false;
		}
		if($("#u_pw").val()!=$("#pwCheck").val()){
			alert("입력된 비밀번호가 다릅니다!");
			$("#pwCheckTxt").css("display", "none")
			pwCheck = false;
			$("#pwCheck").focus();
		}else{
			$("#pwCheckTxt").css("display", "inline-block")
			pwCheck = true;
		}
		
	});
	$("#submitBtn").click(function(){
// 		if($("#uName").val()==""||$("#uName").val()==null||
// 			$("#uId").val()==""||$("#uId").val()==null||
// 			$("#pw").val()==""||$("#pw").val()==null||
// 			$("#pno").val()==""||$("#pno").val()==null||
// 			$("#addr").val()==""||$("#addr").val==null||
// 			$("#email").val()==""||$("#email").val()==null||
// 			$("#nick").val()==""||$("#nick").val()==null||
// 			
			if($("#u_id").val()==""||$("#u_id").val()==null){
				alert("아이디를 입력하세요");
				$("#u_id").focus();
			}else if($("#u_pw").val()==""||$("#u_pw").val()==null){
				alert("비밀번호를 입력하세요");
				$("#u_pw").focus();
			}else if($("#u_name").val()==""||$("#u_name").val()==null){
				alert("이름을 입력하세요");
				$("#u_name").focus();
			}else if($("#u_nick").val()==""||$("#u_nick").val()==null){
				alert("닉네임을 입력하세요");
				$("#u_nick").focus();
			}else if($("#u_birthdate").val()==""||$("#u_birthdate").val()==null){
				alert("생년월일을 입력하세요");
				$("#u_birthdate").focus();	
			}else if($("#u_phone").val()==""||$("#u_phone").val()==null){
				alert("휴대폰 번호를 입력하세요");
				$("#u_phone").focus();
			}else if($("#u_phone").val()=="--"||$("#u_phone").val()=="--"){
				alert("휴대폰 번호를 입력하세요");
				$("#u_phone").focus();
			}else if($("#u_address").val()==""||$("#u_address").val==null){
				alert("주소를 입력하세요");
				$("#u_address").focus();
			}else if($("#u_email").val()==""||$("#u_email").val()==null){
				alert("이메일을 입력하세요");
				$("#u_email").focus();
			}else if($(":radio[name='u_sex']:checked").length<1){
				alert("성별을 선택하세요");
				$("#u_male").focus();
// 			}
		}else{
			if(pwCheck&&idCheck){
				console.log("OK");
				$("#memberJoin").submit();
			}else{
				if(!pwCheck){
					alert("비밀번호를 확인해주세요");
					$("#pwCheck").focus();
				}else if(!idCheck){
					alert("아이디 중복을 확인해주세요");
					$("#u_id").focus();
				}
			}
			
		}
			
	});
});

</script>

</head>
<body>

<div class="container">
<h1>회원가입</h1>
<hr>
<div>
<form action="#" method="post"
	class="form-horizontal" id="memberJoin">
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_id">아이디 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_id" name="u_id" oninput = "checkId()" placeholder="Id"/>
		</div>
		<input type="button" class="btn" id="idCheckbtn" value="중복 확인"/><br>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_pw">패스워드 : </label>
		<div class="col-sm-6">
			<input type="password" class="form-control" 
				id="u_pw" name="u_pw" placeholder="8자 이상 입력하세요"/>
		</div>
	</div>
		
		
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_pw">비밀번호 확인 : </label>
		<div class="col-sm-6">
		<input type="password" id="pwCheck" class="form-control" size="30" maxlength="30"/>
		</div>
		&nbsp;&nbsp;<input type="button" class="btn" id="pwCheckBtn" value="비밀번호 확인"><br>
	</div>
		<label class="col-sm-4 control-label" id = "pwCheckTxt" style="display:none;">비밀번호 확인 완료</label><br><br>
	
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_name">이름 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_name" name="u_name" placeholder="Name"/>
		</div>
	</div>
		
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_nick">닉네임 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_nick" name="u_nick" placeholder="Nick"/>
		</div>
	</div>
	
	<!-- 드랍박스 -->
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_birthdate">생년월일 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_birthdate" name="u_birthdate" placeholder="Birthdate 예) 901230"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_phone">전화번호 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_phone" name="u_phone" placeholder="Phone"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_address">주소 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_address" name="u_address" placeholder="Address"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_email">이메일 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="u_email" name="u_email" placeholder="Email"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_sex">성별 : </label>
		<div class="col-sm-6">
			<input type="radio"	id="u_male" name="u_sex" value="남자"/>남 &nbsp;&nbsp;
			<input type="radio"	id="u_female" name="u_sex" value="여자"/>여
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="u_interests">관심분야 : </label>
		<div class="col-sm-6">
			<select style="height:30px; width:100px;">
				<option>분야선택</option>
				<option>문화</option>
				<option>운동</option>
				<option>맛집</option>
				<option>음악</option>
			</select>
		</div>
	</div>
		
	<div class="form-group">
		<div class="col-sm-off set-2 col-sm-10">		
			<input type="submit" class="btn btn-primary" id="submitBtn" value="가입">
			<input type="reset" id="cancel"
				class="btn btn-danger" value="취소"/>
		</div>
	</div>
</form>
</div>
</div>
<br><br>
</body>
</html>
	
	