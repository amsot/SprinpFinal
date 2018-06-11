<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- JSTL List 받아와서 for문 -->

<section class="find-job section">
<div class="container">
<h2 class="section-title">Find good a Job</h2>
<div class="row">
<div class="col-md-12">
<div class="job-list">
<div class="thumb">
<a href="job-details.html"><img src="assets/img/jobs/img-1.jpg" alt=""></a>
</div>
<div class="job-list-content">
<h4><a href="job-details.html">We need a web designer</a><span class="full-time">Full-Time</span></h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum quaerat aut veniam molestiae atque dolorum omnis temporibus consequuntur saepe. Nemo atque consectetur saepe corporis odit in dicta reprehenderit, officiis, praesentium?</p>
<div class="job-tag">
<div class="pull-left">
<div class="meta-tag">
<span><a href="browse-categories.html"><i class="ti-brush"></i>Art/Design</a></span>
<span><i class="ti-location-pin"></i>Cupertino, CA, USA</span>
<span><i class="ti-time"></i>60/Hour</span>
</div>
</div>
<div class="pull-right">
<div class="icon">
<i class="ti-heart"></i>
</div>
<div class="btn btn-common btn-rm">Apply Job</div>
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
</div>
</section>

<table class="table table-striped table-hover">
<thead>
   <tr>
      <th>그룹 번호</th>
      <th>그룹 아이디</th>
      <th>시</th>
      <th>도군</th>
      <th>매니저 아이디</th>
      <th>대분류</th>
      <th>소분류</th>
      <th>정원</th>
      <th>채팅 아이디</th>
      <th>소개글</th>
      <th>userid</th>
   </tr>
</thead>
<tbody>
<c:forEach items="${list }" var="i">
   <tr>
      <td>${i.group_no }</td>
      <td>${i.group_id }</td>
      <td>${i.location }</td>
      <td>${i.location_cat }</td>
      <td>${i.manager_id }</td>
      <td>${i.main_cat }</td>
      <td>${i.small_cat }</td>
      <td>${i.personnel }</td>
      <td>${i.chat_id }</td>
      <td>${i.intro }</td>
      <td>${i.u_id }</td>
   </tr>
</c:forEach>
</tbody>
</tbody>
</table>