<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 업체 상세 정보 페이지로 변경 필요!! -->
<div id="content">
<div class="container">
<div class="row">
<div class="col-md-8 col-sm-8 col-xs-12">
<div class="job-alerts-item">
<h3 class="alerts-title">Manage applications</h3>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="thums">
<img src="assets/img/jobs/img-1.jpg" alt="">
</div>
<h3>Web Designer Meeded</h3>
<span>Quick Studio</span>
</div>
<div class="col-md-3">
<p><span class="full-time">Full-Time</span></p>
</div>
<div class="col-md-2">
<p>Nov 14th, 2017</p>
</div>
<div class="col-md-2">
<p>Rejected</p>
</div>
</div>
</div>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="thums">
<img src="assets/img/jobs/img-1.jpg" alt="">
</div>
<h3>Front-end developer needed</h3>
<span>Quick Studio</span>
</div>
 <div class="col-md-3">
<p><span class="full-time">Full-Time</span></p>
</div>
<div class="col-md-2">
<p>Nov 14th, 2017</p>
</div>
<div class="col-md-2">
<p>Processed</p>
</div>
</div>
</div>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="thums">
<img src="assets/img/jobs/img-1.jpg" alt="">
</div>
<h3>We're looking for an Art Director</h3>
<span>Quick Studio</span>
</div>
<div class="col-md-3">
<p><span class="part-time">Part-Time</span></p>
</div>
<div class="col-md-2">
<p>Nov 14th, 2017</p>
</div>
<div class="col-md-2">
<p>Rejected</p>
</div>
</div>
</div>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="thums">
<img src="assets/img/jobs/img-1.jpg" alt="">
</div>
<h3>Web designer needed</h3>
<span>Quick Studio</span>
</div>
<div class="col-md-3">
<p><span class="full-time">Full-Time</span></p>
</div>
<div class="col-md-2">
<p>Nov 14th, 2017</p>
</div>
<div class="col-md-2">
<p>Approved</p>
</div>
</div>
</div>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="thums">
<img src="assets/img/jobs/img-1.jpg" alt="">
</div>
<h3>Looking for a Project Leader</h3>
<span>Quick Studio</span>
</div>
<div class="col-md-3">
<p><span class="full-time">Full-Time</span></p>
</div>
<div class="col-md-2">
<p>Nov 14th, 2017</p>
</div>
<div class="col-md-2">
<p>Rejected</p>
</div>
</div>
</div>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="thums">
<img src="assets/img/jobs/img-1.jpg" alt="">
</div>
<h3>We're hiring an fullstack designer</h3>
<span>Quick Studio</span>
</div>
<div class="col-md-3">
<p><span class="part-time">Part-Time</span></p>
</div>
<div class="col-md-2">
<p>Nov 14th, 2017</p>
</div>
<div class="col-md-2">
<p>Rejected</p>
</div>
</div>
</div>

<br>
<ul class="pagination">
<li class="active"><a href="#" class="btn btn-common"><i class="ti-angle-left"></i> prev</a></li>
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>
<li><a href="#">3</a></li>
<li><a href="#">4</a></li>
<li><a href="#">5</a></li>
<li class="active"><a href="#" class="btn btn-common">Next <i class="ti-angle-right"></i></a></li>
</ul>

</div>
</div>
</div>
</div>
</div>
<!-- 업체 상세 정보 -->
<section class="find-job section">
<div class="container">
<h2 class="medium-title">
업체 상세 정보
</h2>
<div class="row">
<div class="col-md-12">
<div class="job-list">
<div class="thumb">
<img src="/resources/css/assets/img/jobs/img-1.jpg" alt=""></a>
</div>
<div class="job-list-content">
<h4>${plaview.pla_name}</h4>

<div class="job-tag">
<div class="pull-left">
<div class="meta-tag">

<span><i class="ti-location-pin"></i>${plaview.pla_address}</span>
<span><i class="ti-time"></i>${plaview.pla_statue}</span>
<span><i class="ti-time"></i>${plaview.pla_time}</span>
<span><i></i>${plaview.pla_money}원</span>
<span><i></i>${plaview.pla_phone}</span>

</div>
</div>

</div>
</div>
</div>
</div>
</div>
</div>
</section>

<!-- main category image 클릭 검색 -->
<section class="featured-jobs section">
<div class="container">
<h2 class="medium-title">
업체 상세 정보
</h2>
<div class="row">
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<img src="/resources/css/assets/img/features/img-1.jpg" alt="">
</figure>
<div class="item-body">
<h3 class="job-title"></h3>
<div class="adderess"><i class="ti-location-pin"></i> ${plaview.pla_name}</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> </span>
<span><i class="ti-time"></i> </span>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> </span>
<span><i class="ti-time"></i> </span>
<span><i class="ti-time"></i> 시간</span>
</div>
</div>
</div>
</div>
</div>
</section>


<h1>장소 상세 보기 페이지</h1>
<div class="container">
${plaview}<br>
${plaview.pla_name}<br>
${plaview.pla_address}<br>
${plaview.pla_money}<br>
</div>