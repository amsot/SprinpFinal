<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
</head>
<body>
<div class="content" style="width:1700px;">
<!-- side menu -->
	<div class="side">
	<jsp:include page="/WEB-INF/views/admin/side/companySide.jsp"/>
	</div>
	<div class="main"  >
	<h3>업체 등록</h3>
	<form action="/admin/company/companyReg.do" method="post">
	<table class="table" style="width:1100px;">
		<tr>
			<th>업체 이름</th>
			<td><input type="text" name="com_name" /></td>
		</tr>
		<tr>
			<th>업체 주소</th>
			<td><input type="text" name="com_address" /></td>
		</tr>
		<tr>
			<th>업체 연락처</th>
			<td><input type="text" name="com_phone" /></td>
		</tr>
		<tr>
			<th>업체 이용 금액</th>
			<td><input type="text" name="com_money" />&nbsp;원</td>
		</tr>
		<tr>
			<th>업체 이용 날짜</th>
			<td><input type="date" name="com_date"/></td>
		</tr>
		
		<tr>
			<th>업체 이용 시간</th>
			<td><input type="time" name="com_time" /></td>
		</tr>
		<tr>
			<th>업체 이용 인원</th>
			<td>
			<select name="com_people">
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
			</select>
			</td>
		</tr>
		<tr>
			<td colspan="2"><button class="btn btn-primary">작성 완료</button></td>
		</tr>
	</table>
	</form>
	</div>
</div>

</body>
</html>