<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시글 작성</title>
<script type="text/javascript" src="/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

</head>
<body>
	<form action="/group/notice/write.do" method="post" id="form">
		<label><h1>제목</h1><input type="text" id="title" name="title"/></label><br><br>
		<label><h1>내용</h1><textarea id="content" name="content" rows="30" cols="100"></textarea></label><br><br>
		<input type="hidden" id="user_nick" name="user_nick" value="${nick }">
		<input type="hidden" id="group_no" name="group_no" value="${group }">
		<input type="file" id="file" name="file"><br><br>
		<input type="button" class="btn-primary" onclick="submitContents()" value="작성 완료">
		<input type="button" class="btn" onclick="cancel()" value="취소">
	</form>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "/resources/smarteditor/SmartEditor2Skin.html",
		fCreator: "createSEditor2",
		htParams: {fOnBeforeUnload : function(){}}
	});
	

	function submitContents(){
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	try{
		$("#form").submit();
	}catch(e){}	
	}
	
	function cancel(){
		location.href="/group/notice.do?group_no="+${group};
	}
</script>
</body>
</html>
