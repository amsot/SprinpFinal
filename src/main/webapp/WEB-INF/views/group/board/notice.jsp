<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/main-59fe90f3f9be1ce624ecdbc78f81339ba90528a2d6b5ad2f18a9c0638ffc34a1.css">
<!-- <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/web-da2841c18158e75bf236109ae20fd2d57300975a87478d63ddca64ff63492bb9.css"> -->
<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/desktop-d760397406f1545e4592b2ea79bac5508fda97a4bd63562b92061d02bd0f6711.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

function boardDelete(bno){
// 	console.log(bno);
	location.href="/group/notice/delete.do?board_no="+bno;
}

</script>
</head>
<body class="theme-red ">
<div data-page="comments-index" class="page product_57b177c8e76f681b4a000003 comments index">

  <div class="page-content">
  	<div class="page-content-inner">
  		<div class="content-block product-block">
          <a href="/group/main.do?group_no=3">
            <i class="material-icons arrow_back"></i>모임 상세 페이지로 돌아가기</a>
            <p>메인화면에 가장 최근 작성한 공지가 노출됩니다.</p>
        </div>
        <div class="content-block">
        	<a class="button button-big" href="/group/notice/write.do">
        		<i class="material-icons forum"></i> 공지글을 작성하여 멤버들과 정보를 나눠보아요.
        	</a>
        </div>
        </div>
        <div class="content-block-title text-title">게시글 ${count }개</div>
        <c:forEach items="${list}" var="board" varStatus="cnt">
        <div class="comment-block">
        	<div class="card comment-card comment_5983affe532c2841712b03e9">
        		<div class="card-header">
        			<div class="title">${board.title }</div>
        			<div class="name">${board.user_nick }</div><!-- 작성자 닉네임 -->
        			<div class="date">${board.written_date }<button class="btn" onclick="boardDelete(${board.board_no})">삭제</button></div><!-- 작성일 -->
        		</div>
        		<div class="card-content">
        			<div class="card-content-inner">
        				${board.content }
        			</div>
        		</div>
        		<div class="list-block media-list children-block">
        			<ul>
        			</ul>
        		</div>
        	</div>	
		</div>
		</c:forEach>
	</div>
</div>
<%-- <jsp:include page="../util/paging.jsp"></jsp:include> --%>
</body>
</html>