<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<script>

commentList${cnt.index }();

$('#submitBtn${cnt.index }').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('#new_comment${cnt.index }').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert${cnt.index }(insertData); //Insert 함수호출(아래)
});
//댓글 목록 
function commentList${cnt.index }(){
	var bno=$("#board_no${cnt.index }").val();
    $.ajax({ 
        url : '/comment/list.do',
        type : 'get',
        success : function(data){
            var a ='';
            $.each(data, function(key, value){ 
				if(value.board_no==bno){
	                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
	                a += '작성자 : '+value.user_nick;
	                if(value.user_nick=='${nick}'){
	                	a += '<a onclick="commentDelete${cnt.index }('+value.comments_no+');"> 삭제 </a> </div>';
	                }
	                a += '<div class="commentContent'+value.comments_no+'"> <p> 내용 : '+value.comments +'</p>';
	                a += '</div></div>';
				}
            });
			$("#commentList${cnt.index }").html(a);
        }
    });
}
 
//댓글 등록
function commentInsert${cnt.index }(insertData){
	
    $.ajax({
        url : '/comment/write.do',
        type : "POST",
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList${cnt.index }(); //댓글 작성 후 댓글 목록 reload
                $('#comments${cnt.index }').val("");
            }
        }, error:function(){
        	alert("댓글 등록 오류");
        }
    });
}

//댓글 삭제 
function commentDelete${cnt.index }(cno){
	
    $.ajax({
        url : '/comment/delete.do?comments_no='+cno,
        type : 'get',
        success : function(data){
            commentList${cnt.index }(); //댓글 삭제후 목록 출력 
        }
    });
}

</script>


