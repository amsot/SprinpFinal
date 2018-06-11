<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btnplaceinsert").click( function() {
		 if( $("#pla_name").val() == ""){
			 alert("장소명을 입력해주세요");
			 $("#pla_name").focus();
			 return false;
		 }else if( $("#pla_address").val() == ""){
			 alert("장소 주소를  입력해주세요 ");
			 $("#pla_address").focus();
			 return false;
		 }else if (  $("#pla_address").val() == "" ){
			 alert("연락처를 입력하세요");
			 $("#pla_phone").focus();
			 return false;
		 }else if($("#pla_time").val()==""){
				alert("기본이용시간을 입력하세요");
				$("#pla_time").focus();
				 return false;
			}else if($("#pla_money").val()==""){
				$("#pla_money").focus();
				alert("이용금액을 입력하세요");
				 return false;
			}else if($("#pla_statue").val()==""){
				alert("휴관일 입력하세요");
				$("#pla_statue").focus();
				 return false;
			}else if($("#pla_start").val()==""){
					alert("영업시작시간을 입력하세요");
					$("#pla_start").focus();
					 return false;
			}else if($("#pla_end").val()==""){
				alert("영업종료시간을 입력하세요");
				$("#pla_end").focus();
				 return false;
		}else if($("#pla_people").val()==""){
			alert("수용가능한 인원을 입력하세요");
			$("#pla_people").focus();
			 return false;
	}
	});
});


</script>
<title>Insert title here</title>
</head>
<body>
<h1>제휴업체 대여장소 등록 페이지 </h1>
<hr>
	<div class="container">
		<form action="/place/placeInsert.do" id="placeInsert" method="post" >
			<table width="100" align="center"  cellpadding="1" class="table table-striped table-hover">
			<tr>
				<td height="40" align="center"><strong>장소 명 : </strong></td>
				<td><input type="text" name="pla_name" id="pla_name" class="form-control"> &nbsp; </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>장소 주소 : </strong></td>
				<td> <input type="text" name="pla_address" id="pla_address" class="form-control"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>장소 연락처 : </strong></td>
				<td>
					<select id="hp1" name="pla_phone" style="width:70;">
					   <option value="02"  selected> 02 </option>
					   <option value="032"> 032 </option>
					   <option value="031"> 031 </option>
					   <option value="033"> 033 </option>
					   <option value="043"> 043 </option>
					   <option value="064"> 064 </option>
					</select>
					-
					<input type="tel" id="pla_phone" name="pla_phone" size="4" maxlength="4">
					-
					<input type="text" id="pla_phone" name="pla_phone" size="4" maxlength="4">
					<input type="hidden" id="pla_phone" name="pla_phone" >
				</td>

			</tr>
			<tr>
				<td height="40" align="center"><strong>기본 이용 시간 : </strong></td>
				<td> <input type="text" name="pla_time" id="pla_time" class="form-control"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>이용 금액 : </strong></td>
				<td><input type="text" name="pla_money" id="pla_money" class="form-control"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>휴관일 : </strong></td>
				<td><input type="text" name="pla_statue" id="pla_statue" class="form-control" > </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>영업시작시간 : </strong></td>
				
				<td>  
					<select id="pla_start" name="pla_start" style="width:40;">
					   <option value="04"  selected> 04 </option>
					   <option value="05"> 05 </option>
					   <option value="06"> 06 </option>
					   <option value="07"> 07 </option>
					   <option value="08"> 08 </option>
					   <option value="09"> 09 </option>
					   <option value="10"> 10 </option>
					   <option value="11"> 11 </option>
					   <option value="12"> 12 </option>
					   <option value="13"> 13 </option>
					   <option value="14"> 14 </option>
					   <option value="15"> 15 </option>
					   <option value="16"> 16 </option>
					   <option value="17"> 17 </option>
					   <option value="18"> 18 </option>
					</select>
				</td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>영업종료시간 : </strong></td>
			<td>  
					<select id="pla_end" name="pla_end" style="width:40;">
					   <option value="10"> 10 </option>
					   <option value="11"> 11 </option>
					   <option value="12"> 12 </option>
					   <option value="13"> 13 </option>
					   <option value="14"> 14 </option>
					   <option value="15"> 15 </option>
					   <option value="16"> 16 </option>
					   <option value="17"> 17 </option>
					   <option value="18"> 18 </option>
					   <option value="19"> 19 </option>
					   <option value="20"> 20 </option>
					   <option value="21"> 21 </option>
					   <option value="22"> 22 </option>
					   <option value="23"> 23 </option>
					   <option value="24"> 24 </option>
					</select>
				</td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>수용 가능한 인원 : </strong></td>
				<td>
					<input type="text" name="pla_people" id="pla_people"> <strong>명  </strong>
				</td>
			</tr>
			<tr>
			<td class="btn pull-right"><button class="btn btn-primary" id=cancle() >취소</button>
			<button class="btn btn-primary" id="btnplaceinsert">장소 등록</button><br></td>
			</tr>
			</table>
		</form>
		</div>
</body>
</html>