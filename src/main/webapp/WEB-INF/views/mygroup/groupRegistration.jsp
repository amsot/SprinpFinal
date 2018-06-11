<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(function() {
    $("select[name=selOne]").change(function() {
    	var temp1 = $("select[name=selTow]");
        var cid1_val = $(this).val();
        temp1.children().remove();
        temp1.append('<option value selected>소분류</option>');
         
        if(cid1_val == 'top01') {
            temp1.append('<option value="top01_01">연극</option>');
            temp1.append('<option value="top01_02">사진</option>');
            temp1.append('<option value="top01_03">미술관</option>');
            temp1.append('<option value="top01_04">뮤지컬</option>');
 
        }
        else if(cid1_val == 'top02') {
        	temp1.append('<option value="top02_01">콘서트</option>');
        	temp1.append('<option value="top02_02">가요제</option>');
        	temp1.append('<option value="top02_03">악기</option>');
        	temp1.append('<option value="top02_04">작곡/작사</option>');
        }
        else if(cid1_val == 'top03') {
        	temp1.append('<option value="top03_01">국내여행</option>');
        	temp1.append('<option value="top03_02">일본</option>');
        	temp1.append('<option value="top03_03">중국</option>');
        	temp1.append('<option value="top03_04">동남아시아</option>');
         }
        else if(cid1_val == 'top04') {
        	temp1.append('<option value="top04_01">스키/보드</option>');
        	temp1.append('<option value="top04_02">야구</option>');
        	temp1.append('<option value="top04_03">검도</option>');
        	temp1.append('<option value="top04_04">등산/낚시</option>');
         }
        else if(cid1_val == 'top05') {
        	temp1.append('<option value="top05_01">영어</option>');
        	temp1.append('<option value="top05_02">일본어</option>');
        	temp1.append('<option value="top05_03">중국어</option>');
        	temp1.append('<option value="top05_04">스페인어</option>');
         }
    });
});

$(document).ready(function(){
    $("#selOne").on("change", function(){
        console.log($(this).find("option[value='" + $(this).val() + "']").text());
    });
});
$(document).ready(function(){
    $("#selTow").on("change", function(){
        console.log($(this).find("option[value='" + $(this).val() + "']").text());
    });
});
</script>


</head>
<body>

<section id="content">
<div class="container">
<div class="row">
<div class="col-sm-12 col-md-9 col-md-offset-2">
<fieldset>
<label>모임 개설을 하시겠습니까?</label>
</fieldset>
<div class="page-ads box">
<form class="form-ad">
<div class="form-group">
<label class="control-label">작성자</label>
<input type="text" class="form-control" placeholder="mail@example.com">
</div>
<div class="form-group">
<label class="control-label">모임 이름</label>
<input type="text" class="form-control">
</div>
<div class="form-group">
<label class="control-label">분류</label>
<input type="text" class="form-control" placeholder="e.g.London">
</div>
<div class="form-group">
<label class="control-label">정모 지역</label>
<div class="search-category-container">
<label class="styled-select">
<select class="dropdown-product selectpicker">
<option>All Categories</option>
<option>Finance</option>
<option>IT & Engineering</option>
<option>Education/Training</option>
<option>Art/Design</option>
<option>Sale/Markting</option>
<option>Healthcare</option>
<option>Science</option>
<option>Food Services</option>
</select>
</label>
</div>
</div>
<div class="form-group">
<label class="control-label" for="textarea">정원 <span>(optional)</span></label>
</div>



<a href="#" class="btn btn-common">Submit your job</a>
</form>
</div>
</div>
</div>
</div>
</section>

<div class="container">
<h1>모임 등록</h1>
<hr>
<form action="/mygroup/groupRegistration.do" method="post" class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-2 control-label" for="group_id">작성자 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="u_id" name="u_id" value="${userid}" />
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="group_id">모임 이름 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="group_id" name="group_id" placeholder="모임 이름을 입력해주세요"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="main_cat">분 류 : </label>
		<div class="col-sm-6">
			<select type="text" class="form-control" id="main_cat" name="main_cat">
			<option value selected>대분류</option>
		      <option value="top01">문화예술</option>
		      <option value="top02">음악</option>
		      <option value="top03">여행</option>
		      <option value="top04">스포츠</option>
		      <option value="top05">외국어</option>
		  	</select>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="small_cat">분 류 : </label>
		<div class="col-sm-6">
			<select type="text" class="form-control" id="small_cat" name="small_cat">
			<option value selected>소분류</option>
		  	</select>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="location">정모 지역 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="location" name="location" placeholder="동 / 읍 / 면  입력해주세요"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="personnel">정 원 : </label>
		<div class="col-sm-6">
			<input type="text" class="form-control" 
				id="personnel" name="personnel" placeholder="정원 수 (ex: 1~20 사이 수 입력)"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-2 control-label" for="intro">소개글 : </label>
		<div class="col-sm-6">
			<textarea class="form-control" 
				id="intro" name="intro" placeholder="모임을 소개해주세요"></textarea>
		</div>
	</div>
	
	<!-- <div class="form-group">
		<label class="col-sm-2 control-label" for="file">첨부파일</label>
		<div class="col-sm-6">
		<input type="file" id="file" name="file" class="form-control" />
		</div>
	</div> -->
	
	<br>
	<div>
		<button class="btn btn-primary" style="width:100px; margin-left:300px;" id="Add">모임생성</button>
	</div>
	
</form>
</div>
</body>
</html>