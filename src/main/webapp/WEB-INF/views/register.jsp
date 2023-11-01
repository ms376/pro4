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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/address.js"></script>
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
		<label for="PasswordConfirm">비밀번호 재확인: <input type="password"
			id="pwChk" class="pw"><span id="checkPw"
			style="font-size: 12px;"></span></label>
	</div>
	<script>
		$('.pw').focusout(function() {
			let pass1 = $("#pw").val();
			let pass2 = $("#pwChk").val();

			if (pass1 !== "" || pass2 !== "") {
				if (pass1 === pass2) {
					$("#checkPw").html(' 비밀번호 일치');
					$("#checkPw").css('color', 'green');
				} else {
					$("#checkPw").html(' 비밀번호 불일치');
					$("#checkPw").css('color', 'red');
				}
			}
		});
	</script>
	<div>
		<label for="nickname">닉네임:</label> <input type="text" id="nickname">
	</div>
	<label><input type="radio" name="sex" value="남자" id="sex"
		checked>남자</label>
	<label><input type="radio" name="sex" value="여자" id="sex">여자</label>
	<br>
	<div>
		<label for="birth">생일:</label> <input type="text" id="birth"
			oninput='numlimit(this, 11)'> 980101
	</div>
	<div>
		<label for="rank">등급:</label> <select id="rank">
			<option value="신규">신규</option>
		</select>
	</div>
	<div>
		<label for="interest">관심사항:</label> <select id="interest">
			<option value="운동">운동</option>
			<option value="게임">게임</option>
		</select>
	</div>
	<div>
		<label for="phone">전화번호:</label> <input type="number" id="phone"
			oninput='numlimit(this, 11)'>
	</div>
	<input type="text" id="postcode" placeholder="우편번호" disabled>
	<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
	<br>
	<input type="text" id="address" placeholder="주소" disabled>
	<br>
	<input type="text" id="detailAddress" placeholder="상세주소">
	<input type="text" id="extraAddress" placeholder="참고항목" disabled>
	<br>
	<br />
	<button id="register">회원가입</button>
	<br>
	<script>
		function numlimit(el, maxlength) {
			if (el.value.length > maxlength) {
				el.value = el.value.substr(0, maxlength);
			}
		}
	</script>
</body>
</html>