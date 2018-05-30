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


</script>
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/companySide.jsp"/>
	</div>
	<div class="main">
 	 	<h3>제휴 업체 승인 목록</h3>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>업체 이름</th>
					<th>업체 번호</th>
					<th>업체 전화번호</th>
					<th>업체 제재 상태</th>
					<th>기타</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${companyList }" var="c">
				<tr>
					<td>${c.com_list_no }</td>
					<td><a href="/admin/company/companyListDetail.do?com_no=${c.com_no }">${c.com_name }</a></td>
					<td>${c.com_no }</td>
					<td>${c.com_phone }</td>
					<td>
					<c:if test="${c.com_block==1 }">
						활동중
					</c:if>
					<c:if test="${c.com_block==0 }">
						정지
					</c:if>
					
					</td>
					<td>
					<a href="#">업체 페이지로 이동</a>
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
		<jsp:include page="/WEB-INF/views/admin/company/util/listPaging.jsp"/>	
		<form action="/admin/company/companyList.do" method="get">
		<div id="search"  style="margin-left: 430px;">
		<input type="text" name="search"/>
		<button class="btn btn-primary">검색</button>
		</div>
		</form>

</body>
</html>