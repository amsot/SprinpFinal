<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

function close(){
 	location.replace("/group/meeting/list.do?group_no=${group_no}");
}
function urldecode (str) {  
    return decodeURIComponent((str + '').replace(/\+/g, '%20'));  // 공백 문자인 + 를 처리하기 위해 +('%20') 을 공백으로 치환
  }
$(document).ready(function(){
	function request(){
		 var requestParam ="";
		 
		 //getParameter 펑션
		  this.getParameter = function(param){
		  //현재 주소를 decoding
		  var url = unescape(location.href); 
		  //파라미터만 자르고, 다시 &그분자를 잘라서 배열에 넣는다. 
		   var paramArr = (url.substring(url.indexOf("?")+1,url.length)).split("&"); 
		 
		   for(var i = 0 ; i < paramArr.length ; i++){
		     var temp = paramArr[i].split("="); //파라미터 변수명을 담음
		 
		     if(temp[0].toUpperCase() == param.toUpperCase()){
		       // 변수명과 일치할 경우 데이터 삽입
		       requestParam = paramArr[i].split("=")[1]; 
		       break;
		     }
		   }
		   return requestParam;
		 }
		}
	var request = new request();
	var name = request.getParameter("name");
	var tel = request.getParameter("tel");
	var addr = request.getParameter("addr");
	var email = request.getParameter("email");
	var amount = request.getParameter("amount");
	var shop = request.getParameter("s_name");
	var res_id = request.getParameter("res_id");
	var meeting_no = request.getParameter("meeting_no");
	var group_no = request.getParameter("group_no");
	var IMP = window.IMP; // 생략가능
	IMP.init('imp45480754'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '해피투게더',
	    amount : amount,
	    buyer_email : email,
	    buyer_name : name,
	    buyer_tel : tel,
	    buyer_addr : addr,
	    meeting_no : meeting_no,
	    group_no : group_no,
	    m_redirect_url : '/pay.do'
	}, function(rsp) {
	    if ( rsp.success ) {
	    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	    	jQuery.ajax({
	    		url: "/pay.do", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
	    		type: 'POST',
	    		dataType: 'json',
	    		data: {
		    		"imp_uid" : rsp.imp_uid,
		    		"res_id" : res_id,
		    		"meeting_no" : meeting_no
		    		//기타 필요한 데이터가 있으면 추가 전달
	    		}
	    	}).done(function(data) {
	    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	    		if ( everythings_fine ) {
	    			var msg = '결제가 완료되었습니다.';
	    			msg += '\결제 금액 : ' + rsp.paid_amount;
	    			msg += '카드 승인번호 : ' + rsp.apply_num;
	    			alert(msg);
	    			
	    		} else {
	    			//[3] 아직 제대로 결제가 되지 않았습니다.
	    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	    			alert("결제 오류로 자동 취소처리되었습니다.");
	    		}
	    	});
	    	
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        alert(msg);
// 	        self.close();
	    }
	    close();
	});
	
});
</script>