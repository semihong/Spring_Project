/**
 * 
 */
function checkImageType(fileName){
	alert("aaaa");
		var pattern = /jpg|gif|png|jpeg/i;
		return fileName.match(pattern);
}
function getImageLink(fileName){
	if(!checkImageType(fileName)){
		return;
	}
	var front= fileName.substr(0,12);
	var end=fileName.substr(14);
	
	alert("front="+front);
	alert("end"+end);
	return front+end;
}
function getOriginalName(fileName){
	alert("fileName="+fileName);
	return fileName;
}


$(".fileDrop").on("dragenter dragover",function(event){
	event.preventDefault();
})
$(".fileDrop").on("drop",function(event){
	event.preventDefault();
	var files=event.originalEvent.dataTransfer.files;
	var file=files[0];

	var formData=new FormData();
	formData.append("file",file);

	$.ajax({
		url:"uploadAjax",
		data:formData,
		dataType:"text",
		processData:false,
		contentType:false,
		type:"post",
		success:function(data){
			
			alert(data);
			alert(checkImageType(data));
				
		
		var str="";
		if(checkImageType(data)){
			alert("aaa");
			str="<div>"
				+"<img src='displayFile?fileName="+getImageLink(data)+"'/>"
			+"<small data-src=\'"+data+"\'>x</small>"+"</div>";
			
		}else{
			str="<div><a href='displayFile?fileName="+data+"'>"
				+getOriginalName(data)+
				+"</a></div>";
		}
		$(".uploadedList").append(str);
			}
			
	});//Drop end
	//small태그를 click했을 때
	$(".uploadedList").on("click","small",function(event){
		var that=$(this);
		$.ajax({
		url:"deleteFile",
		type:"post",
		data:{fileName:$(this).attr("data-src")},
		dataType:"text",
		success:function(result){
			if(result=="deleted"){
			that.parent("div").remove();
		}
		}
		});
	
	});


})
