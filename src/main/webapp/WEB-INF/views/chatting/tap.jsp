<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>       

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>


<!-- <script type="text/javascript"src="https://code.jquery.com/jquery-2.2.4.min.js"></script> -->
</head>
<script type="text/javascript">
$(document).ready(function() {
	$("#chatMessage").scrollTop(99999999);
	$(".nav").on("click", ".nav-link", function() {
		$(".nav-link").removeClass("viewPage");
		$(this).addClass("viewPage");
		
		var chatRoom = $(this).attr("id");
	

	    	      $.ajax({
	                  url: "/chatSession",
	                  method: 'POST',
	                  data: chatRoom,
	                  dataType: 'json',
	                  contentType: "application/json; charset=UTF-8",
	                  success: function(res) {
	   					console.log("성공");
	   				
	                  }
	               });
	    	  

		var page = $(this).attr("href");
		$(".contents").load(page);
		return false;
	});
	
	$(".show1").show();
	$(".show2").hide();
	$(".show1").click(function(){
		$(".show1").hide('3000');
		$(".show2").show('3000');

	});
	$(".glyphicon-remove").click(function(){
		$(".show1").show('3000');
		$(".show2").hide('3000');
	});
	
});


</script>

<body>
<div style="height: 1000px">

	  	<span class="show1" style="float:right; position: fixed; left: 90%; top: 87%; z-index:1;">
	  		<img  src="/resources/img/chat.png">
		</span>

<div class="container show2" style="float:right; position: fixed; left: 55%; top: 65%; z-index:1;">

  <div style="width: 100px; float:left;">
	  <ul class="nav nav-pills nav-stacked">
	    <li ><a data-toggle="tab" id="1" class="nav-link" href="/chatting/chat.do" >1번 방</a></li>
	    <li><a data-toggle="tab" id="2" class="nav-link" href="/chatting/chat.do" >2번 방</a></li>
	    <li><a data-toggle="tab" id="3" class="nav-link" href="/chatting/chat.do" >3번 방</a></li>
	    <li><a data-toggle="tab" id="4" class="nav-link" href="/chatting/chat.do" >4번 방</a></li>
	  </ul>	
  </div>

	<div class="contents">
		<jsp:include page="/WEB-INF/views/chatting/chat.jsp"></jsp:include>
	</div>
	
                
</div>


</div>
</body>
</html>