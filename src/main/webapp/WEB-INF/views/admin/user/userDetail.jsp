<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리  선언, 코드-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- 제이쿼리 끝 -->
<!-- 부트스트랩 선언, 코드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝 -->
<script type="text/javascript">
	function deleteUser(no){
		var result1 = confirm('정말로 이 계정을 삭제하시겠습니까? (복구 불 가능)');
		if(result1){
			var result2 = prompt('관리자 비밀번호를 입력하세요.');
			$form = $("<form>").attr('action','/admin/user/userDelete.do').attr('method','post')
			.append($("<input>").attr('type','hidden').attr('name','pw').attr('value',result2))
			.append($("<input>").attr('type','hidden').attr('name','u_no').attr('value',no))
			.appendTo($(document.body));
			$form.submit();
		}else{
			
		}
	}
	
	function changeStop(num){
		result1 = confirm('정말로 제재 상태를 변경하시겠습니까?');
		if(result1){
			var result2 = prompt('관리자 비밀번호를 입력하세요.');
			$form = $("<form>").attr('action','/admin/user/userBlack.do').attr('method','post')
			.append($("<input>").attr('type','hidden').attr('name','pw').attr('value',result2))
			.append($("<input>").attr('type','hidden').attr('name','u_no').attr('value',num))
			.appendTo($(document.body));
			$form.submit();
		}
	}

</script>
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/userSide.jsp"/>
	</div>
	<div class="main">
 	 	<h3>회원 정보 자세히</h3>
 	 	<br>
 	 	<table class="table" style="width:1100px;">
 	 		<tr>
 	 			<th>회원 번호</th>
 	 			<td>${user.u_no }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>아이디</th>
 	 			<td>${user.u_id }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>이름</th>
 	 			<td>${user.u_name }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>닉네임</th>
 	 			<td>${user.u_nick }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>생년월일</th>
 	 			<td><fmt:formatDate value="${user.u_birthdate }" pattern="yy-MM-dd HH:mm:ss"/></td>
 	 		</tr>
 	 		<tr>
 	 			<th>연락처</th>
 	 			<td>${user.u_phone }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>주소</th>
 	 			<td>${user.u_address }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>이메일</th>
 	 			<td>${user.u_email }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>성별</th>
 	 			<td>${user.u_sex }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>등급</th>
 	 			<td>${user.u_grade }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>관심사</th>
 	 			<td>${user.u_interests }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>가입 날짜</th>
 	 			<td><fmt:formatDate value="${user.u_regdate }" pattern="yy-MM-dd HH:mm:ss"/></td>
 	 		</tr>
 	 		<tr>
 	 			<th>가입된 모임</th>
 	 			<td>${user.group_no }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>활동 상태</th>
 	 			<td>
 	 			<c:if test="${user.u_black == 1}">★활동중★</c:if>
 	 			<c:if test="${user.u_black == 0}">★제재★</c:if>
 	 			</td>
 	 		</tr>
 	 		<tr>
 	 			<th>관리</th>
 	 			<td>
 	 			<button class="btn btn-danger" onclick="deleteUser('${user.u_no}')">계정 삭제</button>
 	 			<c:if test="${user.u_black==1 }">
 	 			<button class="btn btn-danger" onclick="changeStop('${user.u_no}')">제재하기</button>
 	 			</c:if>
 	 			<c:if test="${user.u_black==0 }">
 	 			<button class="btn btn-danger" onclick="changeStop('${user.u_no}')">제재풀기</button>
 	 			</c:if>
 	 			</td>
 	 		</tr>
 	 	
 	 	
 	 	</table>
 	</div>
</div>

</body>
</html>