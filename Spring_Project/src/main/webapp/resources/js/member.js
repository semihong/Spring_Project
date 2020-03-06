/*
 * 				data : {"id" : id},
 */



function fn_idChk(){
	var id=$("#id").val();
	if(id.length==0){
	    alert("아이디 입력바람");
	    
	    
	    
	    $("#id").focus();
	    return false;
	}
	$.ajax({
				url:"idChk",
				type:"post",
				dataType:"json",
				data:id,
				success:function(data){
					if(data == 1){
						$("#idChk").val("");

						alert("Duplicated ID");
					}else if(data == 0){
						$("#idChk").attr("value", "Y");
						$("#idChk").attr("readOnly",true);
						

						alert("Correct ID");
					}
				},
	
					
				})
			
}

function pwcheck() {
	var len = document.getElementById("pw").value;

	if (7<len.length&&len.length<11) {
		document.getElementById("label2").innerHTML="Confirmed"
	} else {
		document.getElementById("label2").innerHTML="Please type Password from 8 to 12 lengths"
	}
}
function passcheck(){ 
	
	var pass1 = document.getElementById("pw").value;
	var pass2 = document.getElementById("pwchk").value;
	
	if(pass1 == pass2){
		document.getElementById("label3").innerHTML="Correct Password"
	}else{
		document.getElementById("label3").innerHTML="Please type again"
	}
}
	
function join(){
	if ($("#idChk").val()=="N"){
		document.getElementById("label1").innerHTML="Please check ID";
		return false;
	}
}