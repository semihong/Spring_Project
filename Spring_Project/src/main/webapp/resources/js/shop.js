
 $(document).ready(function(){
		
	 $(".addCart_btn").on("click",function(){
		var gdsNum=$("#gdsNum").text();
		var gdsName=$("#gdsName").text();
		var price=$("#price").text();
		var date=$("#date1").val();
		var images=$("#images").val();
		var id=$("#id").val();
		console.log("id = "+id);
		console.log("gdsNum = "+gdsNum);
		console.log(gdsNum);
		$.ajax({
			type:"post",
			url:"cart",
			contentType:"application/json",
			dataType:"text",
			data : JSON.stringify(
					{
						gdsNum:gdsNum,gdsName:gdsName,
						price:price,date:date,images:images,id:id	
					}),
			success: function(result){
				if(result==1){
					alert("Added to the Cart");
					
				}else{
					alert("Please Log in");
				}
				},
			
			error: function(err){
				alert("Please try again");
			}
			});
		});


	
 });
 function del(rno){
	 $("form").attr("action","delete?rno="+rno).submit();	 
 }
 
 function btnclick(){
	 alert($("#dis").val());
	 if($("#dis").val() == "abc"){
		 alert($("#dis").text());

		 $("#totalpr").text(parseFloat($("#totalpr").text()) - 10.8);
	 }
 }
 

	 function bttn(){
	 alert("Move to the Payment");
 
 }
 
	 
 
 
 