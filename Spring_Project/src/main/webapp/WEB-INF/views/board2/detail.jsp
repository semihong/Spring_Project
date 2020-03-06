<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.11.3.js?v="></script>
<script src="../resources/js/button.js"></script>
<link href="../resources/css/board.css" rel="stylesheet">
</head>
<body>
<table border="1">
<tr>
<td>번호</td>
<td>
<input type="text" value="${detail.no}" name="no"></td>
</tr>
<tr>
<td>제목</td><td>${detail.subject}</td>
</tr>
<tr>
<td>내용</td><td>${detail.contents}</td>
</tr>
<tr>
<td>작성자</td><td>${detail.writer}</td>
</tr>
<tr>
<td>작성일자</td><td>${detail.write_date}</td>
</tr>
<tr>
<td>조회수</td><td>${detail.cnt}</td>
</tr>

<tr>
	<td colspan="2">
	<!--  
	<input type="submit" value="수정" id="modify">
		<input type="submit" value="삭제" id="delete">
	-->

	<c:if test="${(member.id!=null) or (member.verify==9)}">
	<a href="modify?no=${detail.no}">수정</a>
	
	<a href="delete?no=${detail.no}">삭제</a>
	</c:if>
	</td>
	</tr>
	
</table>

<h2>Ajax Test Page</h2>
<div class="comment">
	<div class="commentheader">
	게시판 번호:<input type="text" value="${detail.no}" name="bno" id="newBno">
	</div>
	<div class="commenter">
	댓글작성자:<input type="text" name="replyer" id="newReplyWriter" value="${member.id}">
	</div>
	<div class="commentcontents">
	댓글 내용: <textarea name="replytext" id="newReplyText"></textarea>
	</div>
	
	<input type="button" id="replyAddBtn" value="댓글추가">
</div>


<div id="modDiv">

	<div class="modal-title"></div>

	<div>
	
		<!-- <input type="text" id="replytext"> -->
	<textarea id="replytext"></textarea>
	</div>
	<div>
	<button type="button" id="replyModBtn">수정</button>
	<button type="button" id="replyDelBtn">삭제</button>
	<button type="button" id="closeBtn">닫기</button>
	
	</div>
</div>
<ul id="replies">

</ul>
<!-- <script src="https://code.jquery.com/jquery-3.4.1.js"></script>  -->
<script src="../resources/js/reply.js"></script>


</body>
</html>