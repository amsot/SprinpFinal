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
<script type="text/javascript">

	//승인 
	function register(no){
		var result = confirm('정말로 승인하시겠습니까?');
		
		if(result){
			var result2 = prompt('관리자 비밀번호를 입력하세요');
			var $form = $("<form>").attr("action","/admin/company/companyApply.do").attr("method","post")
			.append($("<input>").attr("type","hidden").attr("name","com_no").attr("value",no))
			.append($("<input>").attr("type","hidden").attr("name","pw").attr("value",result2))
			.appendTo($(document.body));
			$form.submit();
			
		}else{
			
		}
		
	}

	//거절 - 삭제
	function deleteC(num){
		var result1 = confirm('이 제휴 업체를 정말로 삭제하시겠습니까?');
		if(result1){
			var result2 = prompt('관리자 비밀번호를 입력하세요.');
			var $form = $("<form>").attr("action","/admin/company/companyListDelete.do").attr("method","post")
			.append($("<input>").attr("type","hidden").attr("name","com_no").attr("value",num))
			.append($("<input>").attr("type","hidden").attr("name","pw").attr("value",result2))
			.appendTo($(document.body));
			$form.submit();
			
		}else{
			
		}
	}
</script>
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/companySide.jsp"/>
	</div>
	<div class="main">
 	 	<h3>제휴 업체 신청 상세 페이지</h3>
 	 	<table class="table" style="width:1100px;">
 	 		<tr>
 	 			<th>업체 번호</th>
				<td>${company.com_no }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 이름</th>
 	 			<td>${company.com_name }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 아이디</th>
 	 			<td>${company.com_id }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 비밀번호</th>
 	 			<td>${company.com_pw }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 전화번호</th>
 	 			<td>${company.com_phone }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 이메일</th>
 	 			<td>${company.com_email }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 상태</th>
 	 			<td>${company.com_status }</td>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 관리</th>
 	 			<td>
 	 			<button class="btn btn-primary" onclick="register('${company.com_no}')">업체 승인</button>
 	 			<button class="btn btn-danger" onclick="deleteC('${company.com_no}')">승인 거절</button>
 	 			</td>
 	 		</tr>
 	 		
 	 		
 	 	
 	 	</table>
 	 </div>
</div>

</body>
</html>