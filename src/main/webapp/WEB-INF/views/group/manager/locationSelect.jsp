<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#myCarousel").carousel("cycle");
});
function addr(addr, people, money, pla_no){
	opener.document.getElementById("addrDetail").value = addr;
	opener.document.getElementById("personnel").value = people;
	opener.document.getElementById("fee").value = money / 10;
	opener.document.getElementById("pla_no").value = pla_no;
	window.close();
}
</script>
</head>

<body>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false"> 

	<div class="carousel-inner" role="listbox">
		<!--슬라이드1-->
		<c:forEach items="${list }" var="i" varStatus="cnt">
		<c:if test="${cnt.index eq 0 }">
		<div class="item active"> 
		</c:if>
		<c:if test="${cnt.index ne 0 }">
		<div class="item">
		</c:if>
			<img src="http://www.blueb.co.kr/SRC2/_image/w01.jpg" style="width:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>${i.pla_name }</h1>
					<h4>정원 : ${i.pla_people }</h4>
					<h4>금액 : ${i.pla_money }</h4>
					<h4>${i.pla_address }</h4>
					<button id="btnOk" class="btn" onclick="addr('${i.pla_address}', '${i.pla_people }', '${i.pla_money }', '${i.pla_no }')">선택</button>		
				</div>
			</div>		
		</div>
		</c:forEach>
		<!--슬라이드1-->
	</div>
	
	<!--이전, 다음 버튼-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>
</div>
</body>
</html>