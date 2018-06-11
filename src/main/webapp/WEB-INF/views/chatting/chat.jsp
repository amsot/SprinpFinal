<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script
	src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>chat</title>

<script type="text/javascript">
 
    var chatSock = null;
 
    $(document).ready(function(){
         
        chatSock = new SockJS("/echo-ws");
         
        chatSock.onopen = function() {
        	var str = "";
        	<c:forEach items="${sessionScope.userLiest}" var="list">
				str +=${list} +"</br>"
        	</c:forEach>
				 $("#userList").html(str);
        
            chatSock.send("채팀방 참여");
        };
         
        chatSock.onmessage = function(evt) {
        	var str = "";
        	<c:forEach items="${sessionScope.userLiest}" var="list">
				str +=${list} +"</br>"
        	</c:forEach>
				 $("#userList").html(str);
            $("#chatMessage").append(evt.data+"<br />");
            $("#chatMessage").scrollTop(99999999);
        };
         
        chatSock.onclose = function() {
        
           	var str = "";
        	<c:forEach items="${sessionScope.userLiest}" var="list">
				str +=${list} +"</br>"
        	</c:forEach>
				 $("#userList").html(str);
            sock.send("채팅을 종료합니다.");
          
        }
         
         $("#message").keydown(function (key) {
             if (key.keyCode == 13) {
            	 if( $("#message").val() != "") {
                 	var str = "";
                 	
                	<c:forEach items="${sessionScope.userLiest}" var="list">
        				str +=${list} +"</br>"
                	</c:forEach>
        			$("#userList").html(str);
        				 
                 chatSock.send($("#message").val());
                 $("#chatMessage").append("나 ->  " + $("#message").val() + "<br/>");
                 $("#chatMessage").scrollTop(99999999);

                 $("#message").val("");
            	 }
             }
          });
         
        $("#sendMessage").click(function() {
        	console.log('1111');
            if( $("#message").val() != "") {
            	var str = "";
            	<c:forEach items="${sessionScope.userLiest}" var="list">
    				str +=${list} +"</br>"
            	</c:forEach>
    				 $("#userList").html(str);
                chatSock.send($("#message").val());
                $("#chatMessage").append("나 ->  " + $("#message").val() + "<br/>");
                $("#chatMessage").scrollTop(99999999);

                $("#message").val("");
            }
        });
    });
        $(function () {
            var obj = $("#chatMessage");

            obj.on('dragenter', function (e) {
                 e.stopPropagation();
                 e.preventDefault();
//                  $(this).css('border', '2px solid #5272A0');
            });

            obj.on('dragleave', function (e) {
                 e.stopPropagation();
                 e.preventDefault();
//                  $(this).css('border', '2px dotted #8296C2');
            });

            obj.on('dragover', function (e) {
                 e.stopPropagation();
                 e.preventDefault();
            });

            obj.on('drop', function (e) {
                 e.preventDefault();
//                  $(this).css('border', '2px dotted #8296C2');

                 var files = e.originalEvent.dataTransfer.files;
                 if(files.length < 1)
                      return;

                 F_FileMultiUpload(files, obj);
            });

       });
     // 파일 멀티 업로드
        function F_FileMultiUpload(files, obj) {
             if(confirm(files.length + "개의 파일을 업로드 하시겠습니까?") ) {
                 var data = new FormData();
                 for (var i = 0; i < files.length; i++) {
                    data.append('file', files[i]);
                 }

                 var url = "/fileup";
                 $.ajax({
                    url: url,
                    method: 'POST',
                    data: data,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    success: function(res) {
                    	var str = "";
                    	<c:forEach items="${sessionScope.userLiest}" var="list">
            				str +=${list} +"</br>"
                    	</c:forEach>
            				 $("#userList").html(str);;
						console.log(res.stored);
						chatSock.send("<img style=\"width: 200px;height: 200px\" src=\"/resources/img/"+res.stored+"\"><br/>");
                    	 $("#chatMessage").append("나 ->  <img style=\"width: 200px;height: 200px\" src=\"/resources/img/"+res.stored+"\"><br/>");
                    }
                 });
             }
        }

//         파일 멀티 업로드 Callback
        function F_FileMultiUpload_Callback(files) {
             for(var i=0; i < files.length; i++)
                 console.log(files[i].file_nm + " - " + files[i].file_size);
        }
    
</script>


</head>
<body>
	<input type="button" id="sendMessage" value="엔터" />
	<input type="text" id="message" placeholder="메시지 내용" />
	<div id="chatMessage"
		style="overFlow: auto; width: 700px; height: 500px; border: 1px solid black;"></div>
	<div>
		<span>유저 목록</span>
		<div id="userList"
			style="overFlow: auto; width: 200px; height: 500px; border: 1px solid black;"></div>
	</div>
</body>
</html>

