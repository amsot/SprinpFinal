<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- main category image 클릭 검색 -->
<c:forEach items="${list }" var="pla">
<section class="featured-jobs section">
<div class="container">
<h2 class="medium-title">
업체 리스트
</h2>

<div class="row">
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<a class="hover-effect" href="/place/placeView.do?pla_no=${pla.pla_no }">
<img src="/resources/css/assets/img/features/img-1.jpg" alt="">
</a>
</figure>
<div class="item-body">
<h3 class="job-title"><a href="/place/placeView.do?pla_no=${pla.pla_no }">${pla.pla_name }</a></h3>
<div class="adderess"><i class="ti-location-pin"></i> ${pla.pla_address }</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> ${pla.pla_time }</span>
<span><i class="ti-time"></i> 원/시간</span>
<div class="view-iocn">
<a href="/place/placeView.do?pla_no=${pla.pla_no }"><i class="ti-arrow-right"></i></a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
</c:forEach>