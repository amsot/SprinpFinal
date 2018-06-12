<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/main-59fe90f3f9be1ce624ecdbc78f81339ba90528a2d6b5ad2f18a9c0638ffc34a1.css">
<!-- <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/web-da2841c18158e75bf236109ae20fd2d57300975a87478d63ddca64ff63492bb9.css"> -->
<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/desktop-d760397406f1545e4592b2ea79bac5508fda97a4bd63562b92061d02bd0f6711.css">
<script type="text/javascript" src="/resources/bootstrap/js/bootstrap.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/jquery-ui.css" />
<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	$("#layerpop").dialog({
		autoOpen:false,
		width:500,
		buttons:[{
			text:"확인",
			click:function(){
				$("#photoUpload").submit();
				$(this).dialog("close");
			}
		}, {
			text:"취소",
			click:function(){
				$(this).dialog("close");
				$("#mask, .window").hide();
			}
		}]
	});
	$("mask").click(function(){
		$(this).hide();
		$(".window").hide;
	});
	
	$("#popbutton").click(function(e){
		wrapWindowByMask();
		$('#layerpop').dialog('open');
		e.preventDefault();
	});
	$("#imgBtn").button();
});

function wrapWindowByMask(){
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();
	
	$("#mask").css({"width":maskWidth, "height":maskWidth});
	
	$("#mask").fadeTo("slow", 0.8);
}
function resizeImg(osrc)

{

    var bdiv =document.createElement('DIV');

    document.body.appendChild(bdiv);

    bdiv.setAttribute("id", "bdiv");

    bdiv.style.position = 'absolute';

    bdiv.style.top = 0;

    bdiv.style.left = 0;

    bdiv.style.zIndex = 0;

    bdiv.style.width = document.body.scrollWidth;

    bdiv.style.height = document.body.scrollHeight;

    bdiv.style.background = 'gray';

    //bdiv.style.filter = "alpha(opacity=75)";

    bdiv.style.opacity = '0.5';

    //bdiv.style.mozOpacity = '0.5';

    var odiv = document.createElement('DIV');

    document.body.appendChild(odiv);

    odiv.style.zIndex = 1;

    odiv.setAttribute("id", "odiv");

    odiv.innerHTML = "<a href='javascript:void(closeImg())'><img id='oimg' src='"+osrc+"' border='0' /></a>";

    var img = document.all['oimg'];

    var owidth = (document.body.clientWidth)/2 - (img.width)/2;

    var oheight = (document.body.clientHeight)/2 - (img.height)/2;

    odiv.style.position = 'absolute';

    odiv.style.top = oheight + document.body.scrollTop;

    odiv.style.left = owidth;

    scrollImg();

}
function scrollImg()

{

    var odiv = document.all['odiv'];

    var img = document.all['oimg'];

    var oheight = (document.body.clientHeight)/2 - (img.height)/2 + document.body.scrollTop;

    odiv.style.top = oheight;

    settime = setTimeout(scrollImg, 100);

}

function closeImg()

{

    document.body.removeChild(odiv);

    document.body.removeChild(bdiv);

    clearTimeout(settime);

}

function deletePhoto(pno, oname, gno){
	location.href="/group/photo/delete.do?photo_no="+pno+"&original_name="+oname+"&group_no="+gno;
}
</script>
<style>
#mask{
	position:absolute;
	left:0;
	top:0;
	z-index:1;
	background-color:#000;
	display:none;
}
</style>
</head>
<body class="theme-red ">
<div data-page="reviews-index" class="page product_57b177c8e76f681b4a000003 reviews index">
	<div class="page-content">
		<div class="page-content-inner">
			<div class="content-block product-block">
				<a href="/group/main.do?group_no=${group.group_no }">
					<i class="material-icons arrow_back"></i>
					모임 상세 페이지로 돌아가기
				</a>        
			</div>
			<button class="btn btn-default" id="popbutton">사진 등록</button><br/> 
			<div class="content-block-title text-title">사진 ${count }개</div>
			<div class="review-block">
				<c:if test="${count ne 0}">
					<c:forEach items="${list }" var="photo" varStatus="cnt">
					<div class="card review-card review_591f9674532c28793338d0b3">
						<div class="card-content"> 
							<div class="card-content-inner"></div>	
							<figure>
							<div class="photo col-25">
								<img src="/resources/upload/${photo.original_name }" alt="${photo.original_name }" onclick="resizeImg(this.src)">
							</div>
							<figcaption>${photo.user_nick } / ${photo.upload_date }</figcaption>
							<c:if test="${nick eq photo.user_nick }">
								<button class="btn btn-xs" onclick="deletePhoto('${photo.photo_no}', '${photo.original_name }', '${photo.group_no }')">삭제</button>
							</c:if>
							</figure>
						</div>
					</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
</div>
<div id="mask"></div>
<div id="layerpop" title="사진 등록">
	<form action="/group/photo/upload.do" id="photoUpload" enctype="multipart/form-data" method="post">
		<label for="사진 선택"><input type="file" id="file" name="file" value="사진"/></label>
		<input type="hidden" id="group_no" name="group_no" value=${group.group_no }>
		<input type="hidden" id="user_nick" name="user_nick" value=${user_nick }>
	</form>
</div>

</body>