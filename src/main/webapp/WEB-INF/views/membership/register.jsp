<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="module" src="../js/register.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<link href="../js/register.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>FireBase 회원가입 및 로그인</h1>
	<div>
		<label for="id">아이디:</label> <input type="text" id="id">
	</div>
	<div>
		<label for="name">이름:</label> <input type="text" id="name">
	</div>
	<div>
		<label for="email">이메일:</label> <input type="email" id="email">
	</div>
	<div>
		<label for="password">비밀번호:</label> <input type="password" id="pw">
	</div>
	<div>
		<label for="nickname">닉네임:</label> <input type="text" id="nickname">
	</div>
	<div>
		<label for="sex">성별:</label> <input type="text" id="sex">
	</div>
	<button id="write">회원가입</button><br><br><br>
	<div>
		<label for="id">아이디:</label> <input type="text" id="id">
	</div>
	<div>
		<label for="pw">비밀번호:</label> <input type="password" id="pw">
	</div>
	<button id="login">로그인</button>
	<button id="logout">로그아웃</button>
	<br>
	<br>
	<input type="button" id="select" value="조회">
	<div id="chatArea">
		<div id="chatMessageArea"></div>
	</div>

</body>
</html>