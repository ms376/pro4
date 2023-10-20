<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="module" src="../js/register.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 주소 JS -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/address.js"></script>
<link href="../js/register.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>회원가입 및 로그인</h1>
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
<label><input type="radio" name="sex" value="남자" id="sex" checked>남자</label>
<label><input type="radio" name="sex" value="여자" id="sex">여자</label><br>
<div>
		<label for="birth">생일:</label> <input type="text" id="birth" oninput='numlimit(this, 11)'> 980101
	</div>
	<div>
    <label for="rank">등급:</label>
    <select id="rank">
        <option value="신규">신규</option>
    </select>
</div>
	<div>
    <label for="interest">관심사항:</label>
    <select id="interest">
        <option value="운동">운동</option>
        <option value="게임">게임</option>
    </select>
</div>
	<div>
		<label for="phone">전화번호:</label>
		<input type="number" id="phone" oninput='numlimit(this, 11)'>
	</div>
	<input type="text" id="postcode" placeholder="우편번호"disabled>
	<input type="button" onclick="execDaumPostcode()"
		value="우편번호 찾기">
	<br>
	<input type="text" id="address" placeholder="주소" disabled>
	<br>
	<input type="text" id="detailAddress" placeholder="상세주소">
	<input type="text" id="extraAddress" placeholder="참고항목" disabled><br>
	<br />
	<button id="write">회원가입</button>
	<br>
	<script>
		function numlimit(el, maxlength) {
			  if(el.value.length > maxlength)  {
			    el.value 
			      = el.value.substr(0, maxlength);
			  }
			}
		</script>
	<br>
	<br>
	<br>
	<h1>아래는 관리자페이지로 옴길거</h1>
	<br>
	<input type="button" id="select" value="조회">
	<div id="chatArea">
		<div id="chatMessageArea"></div>
	</div>

</body>
</html>