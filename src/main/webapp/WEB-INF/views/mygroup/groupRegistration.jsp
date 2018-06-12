<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<form>
<section id="content">
<div class="container">
<div class="row">
<div class="col-sm-12 col-md-9 col-md-offset-2">
<fieldset>
<label>아직 회원이 아니신가요?</label>
<div class="field account-sign-in">
<p>
<a class="btn btn-common btn-sm" href="/user/join.do"><i class="ti-key"></i> Sign in</a>
</p>
</div>
<label>모임을 개설하시겠습니까?</label>
</fieldset>
<div class="page-ads box">
<form class="form-ad">
<div class="form-group">
<label class="control-label">작성자 </label>
<input type="text" class="form-control"  id="u_id" name="u_id" value="${userid}" />
</div>

<div class="form-group">
<label class="control-label" for="group_id">모임 이름</label>
<input type="text" class="form-control" id="group_id" name="group_id" placeholder="모임 이름을 입력해주세요"/>
</div>

<div class="container"> 
    <select name="main_cat" id="main_cat" class="form-control" style="width: 130px;">
        <option value selected>대분류</option>
        <option value="공예/DIY">공예/DIY</option>
        <option value="문화예술">문화예술</option>
        <option value="음악">음악</option>
        <option value="여행">여행</option>
        <option value="스포츠">스포츠</option>
        <option value="외국어">외국어</option>
    </select>
    </div>
<!-- 소분류 -->    
<div class="container"> 
    <select name="small_cat" id="small_cat" class="form-control" style="width: 130px;">
        <option value selected>소분류</option>
    </select>
    </div>
<!-- 시/도 선택 -->
<div class="container">
    <select name="location" id="location" class="form-control" style="width: 130px;">
        <option value selected>시/도 선택</option>
        <option value="서울시">서울시</option>
        <option value="인천시">인천시</option>
        <option value="경기도">경기도</option>
        <option value="강원도">강원도</option>
    </select>
    </div>
<!-- 시/군/구 선택 -->
<div class="container"> 
    <select name="location_cat" id="location_cat" class="form-control" style="width: 130px;">
        <option value selected>시/구/군 선택</option>
    </select>
    </div>
    <br><br>

<div class="form-group">
<label class="control-label" for="personnel">정 원</label>
<input type="text" class="form-control" id="personnel" name="personnel" placeholder="정원 수 (ex: 1~20 사이 수 입력)"/>
</div>

<div class="form-group">
<label class="control-label" for="intro">소 개 글</label>
<textarea class="form-control" id="intro" name="intro" placeholder="모임을 소개해주세요"></textarea>
</div>

<a href="#" class="btn btn-common" style="text-align: center; margin-left: 345px;">모임 개설</a>
</form>
</div>
</div>
</div>
</div>
</section>
</form>


<%-- <div class="container">
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
		<label class="col-sm-2 control-label" for="main_cat">대 분 류 : </label>
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
</div> --%>

<script type="text/javascript">
$(function() {
    $("select[name=main_cat]").change(function() {
    	var temp1 = $("select[name=small_cat]");
        var cid1_val = $(this).val();
        temp1.children().remove();
        temp1.append('<option value selected>소분류</option>');
        if(cid1_val == '공예/DIY') {
        	console.log("공예 선택됨");
            temp1.append('<option value="가죽공예">가죽공예</option>');
            temp1.append('<option value="매듭공예">매듭공예</option>');
            temp1.append('<option value="나무공예">나무공예</option>');
 
        }
        if(cid1_val == '문화예술') {
            temp1.append('<option value="연극">연극</option>');
            temp1.append('<option value="사진">사진</option>');
            temp1.append('<option value="미술관">미술관</option>');
            temp1.append('<option value="뮤지컬">뮤지컬</option>');
 
        }
        else if(cid1_val == '음악') {
        	temp1.append('<option value="콘서트">콘서트</option>');
        	temp1.append('<option value="가요제">가요제</option>');
        	temp1.append('<option value="악기">악기</option>');
        	temp1.append('<option value="작곡/작사">작곡/작사</option>');
        }
        else if(cid1_val == '여행') {
        	temp1.append('<option value="국내여행">국내여행</option>');
        	temp1.append('<option value="일본">일본</option>');
        	temp1.append('<option value="중국">중국</option>');
        	temp1.append('<option value="동남아시아">동남아시아</option>');
         }
        else if(cid1_val == '스포츠') {
        	temp1.append('<option value="스키/보드">스키/보드</option>');
        	temp1.append('<option value="야구">야구</option>');
        	temp1.append('<option value="검도">검도</option>');
        	temp1.append('<option value="등산/낚시">등산/낚시</option>');
         }
        else if(cid1_val == '외국어') {
        	temp1.append('<option value="영어">영어</option>');
        	temp1.append('<option value="일본어">일본어</option>');
        	temp1.append('<option value="중국어">중국어</option>');
        	temp1.append('<option value="스페인어">스페인어</option>');
         }
    });
});
$(function() {
    $("select[name=location]").change(function() {
    	var temp1 = $("select[name=location_cat]");
        var cid1_val = $(this).val();
        temp1.children().remove();
        temp1.append('<option value selected>시/구/군 선택</option>');
         
        if(cid1_val == '서울시') {
            temp1.append('<option value="강남구">강남구</option>');
            temp1.append('<option value="강동구">강동구</option>');
            temp1.append('<option value="강북구">강북구</option>');
            temp1.append('<option value="강서구">강서구</option>');
            temp1.append('<option value="관악구">관악구</option>');
            temp1.append('<option value="광진구">광진구</option>');
            temp1.append('<option value="구로구">구로구</option>');
            temp1.append('<option value="금천구">금천구</option>');
            temp1.append('<option value="노원구">노원구</option>');
            temp1.append('<option value="도봉구">도봉구</option>');
            temp1.append('<option value="동대문구">동대문구</option>');
            temp1.append('<option value="동작구">동작구</option>');
            temp1.append('<option value="마포구">마포구</option>');
            temp1.append('<option value="광진구">광진구</option>');
            temp1.append('<option value="서대문구">서대문구</option>');
            temp1.append('<option value="서초구">서초구</option>');
            temp1.append('<option value="성동구">성동구</option>');
            temp1.append('<option value="성북구">성북구</option>');
            temp1.append('<option value="송파구">송파구</option>');
            temp1.append('<option value="영등포구">영등포구</option>');
            temp1.append('<option value="용산구">용산구</option>');
            temp1.append('<option value="은평구">은평구</option>');
            temp1.append('<option value="종로구">종로구</option>');
            temp1.append('<option value="중구">중구</option>');
            temp1.append('<option value="중랑구">중랑구</option>');
        }
        else if(cid1_val == '인천시') {
        	temp1.append('<option value="계양구">계양구</option>');
        	temp1.append('<option value="남구">남구</option>');
        	temp1.append('<option value="남동구">남동구</option>');
        	temp1.append('<option value="동구">동구</option>');
        	temp1.append('<option value="부평구">부평구</option>');
        	temp1.append('<option value="서구">서구</option>');
        	temp1.append('<option value="연수구">연수구</option>');
        	temp1.append('<option value="중구">중구</option>');
        	temp1.append('<option value="강화군">강화군</option>');
        	temp1.append('<option value="옹진군">옹진군</option>');
        }
        else if(cid1_val == '경기도') {
        	temp1.append('<option value="고양시">고양시</option>');
        	temp1.append('<option value="과천시">과천시</option>');
        	temp1.append('<option value="광명시">광명시</option>');
        	temp1.append('<option value="구리시">구리시</option>');
        	temp1.append('<option value="군포시">군포시</option>');
        	temp1.append('<option value="남양주시">남양주시</option>');
        	temp1.append('<option value="동두천시">동두천시</option>');
        	temp1.append('<option value="부천시">부천시</option>');
        	temp1.append('<option value="성남시">성남시</option>');
        	temp1.append('<option value="수원시">수원시</option>');
        	temp1.append('<option value="시흥시">시흥시</option>');
        	temp1.append('<option value="안산시">안산시</option>');
        	temp1.append('<option value="안양시">안양시</option>');
        	temp1.append('<option value="오산시">오산시</option>');
        	temp1.append('<option value="의왕시">의왕시</option>');
        	temp1.append('<option value="의정부시">의정부시</option>');
        	temp1.append('<option value="평택시">평택시</option>');
        	temp1.append('<option value="하남시">하남시</option>');
        	temp1.append('<option value="가평군">가평군</option>');
        	temp1.append('<option value="광주시">광주시</option>');
        	temp1.append('<option value="김포시">김포시</option>');
        	temp1.append('<option value="양주군">양주군</option>');
        	temp1.append('<option value="양평군">양평군</option>');
        	temp1.append('<option value="여주군">여주군</option>');
        	temp1.append('<option value="연천군">연천군</option>');
        	temp1.append('<option value="이천군">이천군</option>');
        	temp1.append('<option value="파주시">파주시</option>');
        	temp1.append('<option value="포천시">포천시</option>');
        	temp1.append('<option value="화성시">화성시</option>');
         }
        else if(cid1_val == '강원도') {
        	temp1.append('<option value="강릉시">강릉시</option>');
        	temp1.append('<option value="동해시">동해시</option>');
        	temp1.append('<option value="삼척시">삼척시</option>');
        	temp1.append('<option value="속초시">속초시</option>');
        	temp1.append('<option value="원주시">원주시</option>');
        	temp1.append('<option value="춘천시">춘천시</option>');
        	temp1.append('<option value="태백시">태백시</option>');
        	temp1.append('<option value="고성군">고성군</option>');
        	temp1.append('<option value="양구군">양구군</option>');
        	temp1.append('<option value="양양군">양양군</option>');
        	temp1.append('<option value="영월군">영월군</option>');
        	temp1.append('<option value="인제군">인제군</option>');
        	temp1.append('<option value="정선군">정선군</option>');
        	temp1.append('<option value="철원군">철원군</option>');
        	temp1.append('<option value="평창군">평창군</option>');
        	temp1.append('<option value="홍천군">홍천군</option>');
        	temp1.append('<option value="화천군">화천군</option>');
        	temp1.append('<option value="황성군">황성군</option>');
         }
    });
});
</script>