<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="module" src="../js/ad1.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
</head>
<body>
<h1>관리자 페이지</h1>
<h3>아이디 조회</h3>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>실명</th>
			<th>이메일</th>
			<th>성별</th>
			<th>닉네임</th>
			<th>생일</th>
			<th>주소</th>
			<th>동-호수</th>
			<th>등급</th>
			<th>관심사항</th>
			<th>번호</th>
		</tr>
		<tbody id="table-body"></tbody>
	</table>
	<table border="1">
		<tbody id="table-body2"></tbody>
	</table>
</body>
</html>
