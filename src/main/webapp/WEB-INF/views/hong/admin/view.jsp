<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="with=divice-width,initial-scale=1">
<script src="http://code.jquery.com/jquery-2.2.3.min.js"></script>
<script src="<c:url value="/resources/user/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript">
$(function() {
	$("#deleteBtn").click(function() {
		return confirm("정말 회원 정보를 삭제하시겠습니까?");
	});
})
</script>
<title>회원 정보</title>
</head>
<body>
<div class="container">
<h2>관리자 > 회원 정보</h2>
<table class="table">
	<tr>
		<th>아이디</th>
		<td>${vo.id}</td>
	</tr>
	
	<tr>
		<th>이름</th>
		<td>${vo.name}</td>
	</tr>
	
	<tr>
		<th>비밀번호</th>
		<td>${vo.pw}</td>
	</tr>
	
	<tr>
		<th>생년월일</th>
		<td>${vo.birth}</td>
	</tr>
	
	<tr>
		<th>이메일</th>
		<td>${vo.email}</td>
	</tr>
	
	<tr>
		<th>회원이 쓴 게시글 수</th>
		<td>${getTotalBoard}</td>
	</tr>
	
	<tr>
		<th>회원이 쓴 댓글 수</th>
		<td>${getTotalReply}</td>
	</tr>
	
</table>

	<div>
		<c:if test="${vo.id == 'admin'}">
		<div class="alert alert-danger" role="alert" style="text-align: center; font-size: 20px;">
		  관리자
		</div>
		</c:if>
		
		<c:if test="${vo.id != 'admin'}">
		<a href="delete.do?id=${vo.id}&perPageNum=${param.perPageNum}" 
			class="btn btn-default" id="deleteBtn">삭제</a>
		</c:if>	
		<a href="memberList.do?page=${param.page}&perPageNum=${param.perPageNum}" class="btn btn-default">리스트</a>
	</div>
	
</div>
</body>
</html>