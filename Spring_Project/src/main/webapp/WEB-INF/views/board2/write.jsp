<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="../resources/plugins/jQuery/jquery-3.4.1.js"></script>
<script type="../resources/js/uploadwrite.js"></script>
<link rel= "stylesheet" type="text/css" href="../resources/css/upload.css"></link>
<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
<script src="../resources/ckeditor/ckeditor.js"></script>

</head>
<body>
<h1>FAQ 입니다</h1>
<form action="register" method="post">
	제목 : <input type="text" name="subject">
	

	글쓴이 : <input type="text" name="writer" value="${member.id}" readonly>

	<input type="submit" value="Submit">
	
	
	
	<div class="inputArea">
	<label for="gdsDes"> 내용을 입력해주세요</label>
	
	<textarea rows="5" cols="50" id="gdsDes" name="contents" width="300px"></textarea>	
	
	<script>
 var ckeditor_config = {
   resize_enaleb : false,
   enterMode : CKEDITOR.ENTER_BR,
   shiftEnterMode : CKEDITOR.ENTER_P,
   filebrowserUploadUrl : "../C://images"
 };
 
 CKEDITOR.replace("gdsDes", ckeditor_config);
 
</script>
 </div>
 
 
</div>	

</form>

</body>
</html>


<!-- BoardVo랑 name일치. Boradcontroll이 자동으로 수집) (BoardVo) -->