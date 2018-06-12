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
	location.href="/group/board/delete.do?board_no="+bno;
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
        </div>
        <div class="content-block">
        	<a class="button button-big" href="/group/board/write.do">
        		<i class="material-icons forum"></i> 게시글을 통해서 설레임을 같이 나눠 보아요.
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
        			<div class="date">${board.written_date }
        			<c:if test="${nick eq board.user_nick }">
        				<div class="delete"><button class="btn" onclick="boardDelete(${board.board_no})">삭제</button></div>
        			</c:if>
        			</div>
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
        		<form novalidate="novalidate" class="simple_form new_comment" id="new_comment${cnt.index }" action="/group/board/comments.do" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
        			<div class="list-block inputs-list">
        				<ul>
        					<li>
        						<div class="item-content">
        							<div class="item-media">
        								<img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
        							</div>
        							<div class="item-inner">
        								<div class="item-input-wrapper string required comment_body">
        									<div class="item-input item-input-field">
        										<input class="string required" placeholder="댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comments" id="comments${cnt.index }">
        										<input type="hidden" name="user_nick" id="user_nick${cnt.index }" value="${nick }">
        										<input type="hidden" name="board_no" id="board_no${cnt.index }" value="${board.board_no }">
        									</div>
        									<input type="button" id="submitBtn${cnt.index }" value="등록">
        								</div>
        							</div>
        						</div>
        					</li>
        				</ul>
        			</div>	
        			<div class="container">
        				<div id="commentList${cnt.index }"></div>
        			</div>
        			
        			<%@ include file="comments.jsp" %>
        			<input type="hidden" value="5983affe532c2841712b03e9" name="comment[parent_id]" id="comment_parent_id">
        			<input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
        		</form>
        	</div>	
		</div>
		</c:forEach>
	</div>
</div>
<%-- <jsp:include page="../util/paging.jsp"></jsp:include> --%>
</body>
</html>