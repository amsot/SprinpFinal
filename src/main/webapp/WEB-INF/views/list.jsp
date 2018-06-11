<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#write").click(function() {
		location.href='/board/write.do';
	});
});


</script>
</head>
<body>
<div>
<h1>글쓰기 목록 페이지</h1>
"${nick }"님이 로그인 한 상태 <br>

<button id="write">글쓰기</button>
</div>
</body>
</html>