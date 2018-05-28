<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/companySide.jsp"/>
	</div>
	<div class="main">
 	 	<h3>제휴 업체 장소 리스트</h3>
		<table class="table" style="width:1100px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>제휴 업체</th>
					<th>장소 이름</th>
					<th>주소</th>
					<th>가격</th>
					<th>시간</th>
					<th>쉬는날</th>
					<th>시작 시간</th>
					<th>종료 시간</th>
					<th>인원 수 </th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${placeList }" var="c">
				<tr>
					<td>${c.pla_list_no }</td>
					<td><a href="/admin/company/companyListDetail2.do?com_id=${c.com_id }">${c.com_id }</a></td>
					<td><a href="#">${c.pla_name }</a></td>
					<td>${c.pla_address }</td>
					<td>${c.pla_money }</td>
					<td>${c.pla_time }</td>
					<td>${c.pla_statue }</td>
					<td>${c.pla_start }</td>
					<td>${c.pla_end }</td>
					<td>${c.pla_people }</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/views/admin/company/util/boardPaging.jsp"/>	
</body>
</html>