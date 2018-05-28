<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리  선언, 코드-->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- 제이쿼리 끝 -->
<script type="text/javascript">
	
	$(document).ready(function(){
		
		//로그아웃 확인 후 로그아웃 처리
		$("#btnLogout").click(function(){
			var con = confirm('로그아웃 하시겠습니까?');
			if(con){
				$(location).attr("href","/admin/login/logout.do");
			}else{
				
			}
			
		});
	});
	
	

</script>
</head>
<body>
<div class="container">
	<div class="text-right">
		<strong>${sessionScope.id }</strong>님 어서오세용&nbsp;
		<button class="btn" id="btnLogout">로그아웃</button>
	</div>
	<hr>
	
	<div class="main-side-menu" style="width:200px;">
		<div>
		<b>모임 관리</b>
		<ul>
			<li><a href="/admin/group/groupList.do">모임 목록</a></li>
		</ul>	
		</div>
		<div>
		<b>회원 관리</b>
		<ul>
			<li><a href="/admin/user/userList.do">회원 목록</a></li>
			<li><a href="/admin/user/userMessage.do">채팅 목록</a></li>
			<li><a href="/admin/user/userBlack.do">회원 제재</a></li>
		</ul>
		</div>
		<div>
		<b>정모 관리</b>
		<ul>
			<li><a href="/admin/meet/meetReserv.do">정모 예약 관리</a></li>
			<li><a href="/admin/meet/meetEnd.do">종료된 정모</a></li>
			<li><a href="/admin/meet/meetPay.do">정모 결제 승인 목록</a></li>
		</ul>
		</div>
		<div>
		<b>제휴 관리</b>
		<ul>
			<li><a href="/admin/company/companyList.do">제휴 업체 목록</a></li>
			<li><a href="/admin/company/companyApp.do">제휴 신청 목록</a></li>
			<li><a href="/admin/company/companyAsk.do">제휴 신청 문의</a></li>
			<li><a href="/admin/company/companyReg.do">제휴 업체 등록</a></li>
			<li><a href="/admin/company/companyBoard.do">업체 게시판</a></li>
			<li><a href="/admin/company/companyBlack.do">제휴 업체 제재</a></li>
		</ul>
		</div>
		<div>
		<b>사이트 관리</b>
		<ul>
			<li><a href="/admin/main/mainNotice.do">공지사항</a></li>
			<li><a href="/admin/main/mainEvent.do">이벤트 관리</a></li>
			<li><a href="/admin/main/mainAdver.do">광고 관리</a></li>
			<li><a href="/admin/main/mainBanner.do">상단 배너 관리</a></li>
		</ul>
		</div>
	</div>

	


</div>


</body>
</html>