<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- JSTL List 받아와서 for문 -->

<section class="find-job section">
<div class="container">
<c:forEach items="${list }" var="i">
<h2 class="section-title">Find good a Job</h2>
<div class="row">
<div class="col-md-12">
<div class="job-list">
<div class="thumb">
<a href="job-details.html"><img src="assets/img/jobs/img-1.jpg" alt=""></a>
</div>
<div class="job-list-content">
<h4><a href="job-details.html">${i.group_no }</a><span class="full-time">Full-Time</span></h4>
<p></p>
<div class="job-tag">
<div class="pull-left">
<div class="meta-tag">
<p class="desc">${i.group_id }</p>
<p>${i.location }</p>
<p>${i.location_cat }</p>
<p>${i.manager_id }</p>
<p>${i.main_cat }</p>      
<p>${i.small_cat }</p>
<p>${i.personnel }</p>
<p>${i.chat_id }</p>
<p>${i.intro }</p>
<p>${i.u_id }</p>
<span><a href="browse-categories.html"><i class="ti-brush"></i>Art/Design</a></span>
<span><i class="ti-location-pin"></i>Cupertino, CA, USA</span>
<span><i class="ti-time"></i>60/Hour</span>
</div>
</div>
</div>
</div>
</div>
<div class="job-list">
<div class="thumb">
<a href="job-details.html"><img src="assets/img/jobs/img-2.jpg" alt=""></a>
</div>
</div>
</div>
</div>
</c:forEach>
</div>
</section>
