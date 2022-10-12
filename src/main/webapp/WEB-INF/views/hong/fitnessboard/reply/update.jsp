<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="with=divice-width,initial-scale=1">
<link rel="stylesheet" 
		href="<c:url value="/resources/user/css/bootstrap.min.css" />">
<script src="http://code.jquery.com/jquery-2.2.3.min.js"></script>
<script src="<c:url value="/resources/user/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta charset="UTF-8">
<style type="text/css">
body {
	background-color: #afe0b3;
}
</style>
<title>Fitness Board</title>
</head>
<body>
<div align="center">
	<h2>Fitness Board > 댓글 수정</h2>
	<div class="container">
		<form action="/reply/update.do" method="post">
			<input type="hidden" name="no" value="${param.no}">
			<input type="hidden" name="rno" value="${param.rno}">
			<input type="hidden" name="page" value="${param.page }">
			<input type="hidden" name="perPageNum" value="${param.perPageNum }">
			<p>
				<label>댓글 작성자</label>
				<input type="text" name="writer">
			</p>
			<p>
				<textarea rows="2" cols="30" name="content"></textarea>
			</p>
			
			<p>
				<button class="btn btn-default">수정</button>
				<button type="reset" class="btn btn-default">새로입력</button>
			</p>
			
		</form>
	</div>
</div>
</body>
</html>