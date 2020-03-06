/**
 * 
 */
var bno= $("#newBno").val();
var str="";

$.getJSON("../replies/all/"+bno,function(data){

		$(data).each(function(){
			str+="<li data-rno='"+this.rno+"'class='replyLi'>"
			
		
			
			+this.rno +":"+this.replytext
			+"<button>Edit</button></li>";
			
			
		});
		$("#replies").html(str);
		
		//id가 replies인것을 replyboard.jsp에 찾는다 => <ul id= replies>
		//bno 1번에 대한 댓글을 보여준다.  
});

$(document).ready(function(){
	//댓글쓰기 버튼 클릭
	$("#replyAddBtn").on("click",function(){
	var bno=$("#newBno").val();
	var replyer=$("#newReplyWriter").val();
	var replytext=$("#newReplyText").val();
	//alert(bno);
	//console.log("replytext: "+replytext);
	
	$.ajax({
		type:"post",
		url:"../replies",
		contentType:"application/json",
		dataType:"text",
		data : JSON.stringify(
				{
				bno:bno,replyer:replyer,replytext:replytext
				}),
		success: function(data){
			alert("Completed");
			},
		
		error: function(err){
			alert("정상 처리 되지 못했습니다.");
		}
		});
	});


	// 댓글 수정 버튼 클릭 start
	$("#replies").off("click").on("click",".replyLi button",function(){
	//$("#replies").on("click",".replyLi $(:button)", function(){
		var reply=$(this).parent();
		var rno=reply.attr("data-rno");
		var replytext=reply.text();
		$(".modal-title").html(rno);
		$("#replytext").val(replytext);
		$("#modDiv").show("slow");
	})	//댓글 수정 버튼 클릭 end
	
	$("#replyModBtn").on("click",function(){
	var rno=$(".modal-title").html();
	var replytext=$("#replytext").val();
		$.ajax({
			type:"put",
			url: "../replies/"+rno,
			contentType:"application/json",
			dataType:"text",
			data : JSON.stringify({replytext:replytext}),
			success: function(data){
				if(data=="SUCCESS"){
					alert("Modify completed.");
					//$("#modDiv").hide("slow");
				}
			},
			error: function(err){
				alert("정상 처리 되지 못했습니다.");
			}
		});
	});
	//댓글 삭제하기
	$("#replyDelBtn").on("click",function(){
		var rno=$(".modal-title").html();
		$.ajax({
			type:"delete",
			url: "../replies/"+rno,
			contentType:"application/json",
			dataType:"text",
			data : JSON.stringify({replytext:replytext}),
			success: function(data){
				if(data=="SUCCESS"){
					alert("Deleted.");
					$("#modDiv").hide("slow"); //틀이 천천히 사라짐 , fast하면 빠르게, 하이드 없으면
					//걍 안 사라짐.
				}
			},
			error: function(err){
				alert("정상 처리 되지 못했습니다.");
			}
	});
	});

	//닫기
	 $("#closeBtn").on("click",function(){
			$("#modDiv").hide("slow"); //틀이 천천히 사라짐 , fast하면 빠르게, 하이드 없으면
		 
		 
	 });
	

})