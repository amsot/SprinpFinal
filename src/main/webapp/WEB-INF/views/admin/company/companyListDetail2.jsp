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
	
	function stopC(num){
		var result1 = confirm('정말로 업체 제재상태를 변경하시겠습니까?');
		if(result1){
			var result2 = prompt('관리자 비밀번호를 입력하세요');
			var $form = $("<form>").attr("action","/admin/company/companyBlack.do").attr("method","post")
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
	<div class="main" style="margin-left: 300px;">
 	 	<h3>제휴 업체 상세 페이지</h3>
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
 	 			<c:if test="${company.com_block ==1 }">
 	 				<td>활동중</td>
 	 			</c:if>
 	 			<c:if test="${company.com_block ==0 }">
 	 				<td>정지</td>
 	 			</c:if>
 	 		</tr>
 	 		<tr>
 	 			<th>업체 관리</th>
 	 			<td>
 	 			<button class="btn btn-danger" onclick="deleteC('${company.com_no}')">삭제</button>
 	 			<c:if test="${company.com_block ==1 }">
 	 			<button class="btn btn-danger" onclick="stopC('${company.com_no}')">제재</button>
 	 			</c:if>
 	 			<c:if test="${company.com_block ==0 }">
 	 			<button class="btn btn-danger" onclick="stopC('${company.com_no}')">제재풀기</button>
 	 			</c:if>
 	 			
 	 			</td>
 	 		</tr>
 	 		
 	 		
 	 	
 	 	</table>
 	 	
 	 	<hr>
		<h4>★ ${company.com_id } 의 장소 ★</h4>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
				<th>번호</th>
				<th>장소 이름</th>
				<th>주소</th>
				<th>가격</th>
				<th>시작 시간</th>
				<th>종료 시간</th>
				<th>인원</th>
				<th>관리</th>
				</tr>
			</thead>
			<c:forEach items="${placeList }" var="p">
			<tbody>
				<tr>
					<td>${p.pla_no }</td>
					<td>${p.pla_name }</td>
					<td>${p.pla_address }</td>
					<td>${p.pla_money }</td>
					<td>${p.pla_start }</td>
					<td>${p.pla_end }</td>
					<td>${p.pla_people }</td>
					<td><a href="/admin/company/companyBoard.do?pla_no=${p.pla_no }">보러가기</a></td>
				</tr>
			</tbody>
			</c:forEach>
				
		</table>
 	 </div>
</div>

</body>
</html>