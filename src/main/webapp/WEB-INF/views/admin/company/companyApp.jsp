<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
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


</script>
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/companySide.jsp"/>
	</div>
	<div class="main">
 	 	<h3>제휴 업체 신청 목록</h3>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>업체 이름</th>
					<th>업체 번호</th>
					<th>업체 전화번호</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${noCompanyList }" var="c">
				<tr>
					<td>${c.com_list_no }</td>
					<td><a href="/admin/company/companyAppDetail.do?com_no=${c.com_no }">${c.com_name }</a></td>
					<td>${c.com_no }</td>
					<td>${c.com_phone }</td>
					<td>
					<button class="btn btn-primary" onclick="register('${c.com_no}')">승인</button></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<jsp:include page="/WEB-INF/views/admin/company/util/appPaging.jsp"/>

</body>
</html>