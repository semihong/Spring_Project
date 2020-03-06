/**
 * 
 */
$(document).ready(function(){

	// 수정버튼을 클릭했을때
	$("#modify").click(function(){
		$("#form3").attr("action","modify");

})
	// 삭제버튼을 클릭했을때
	$("#delete").click(function(){
		$("#form3").attr("action","delete");
	})

})

