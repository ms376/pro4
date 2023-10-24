<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="module" src="../js/profile.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
</head>
<head>
<style>
.profile-container {
	display: flex;
	margin: 10px;
}

.profile-picture {
	text-align: center;
	margin-right: 20px;
}

.profile-info {
	flex-grow: 1;
}

label {
	font-weight: bold;
	display: block;
	margin-top: 10px;
}
</style>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<body>
	<div class="wrapper">
		<div class="header no-print">
			<div class="card animated fadeIn">
				<div style="text-align: center;">
					<h3>내정보</h3>
				</div>
				<script>
					// 사용자 정보 출력을 함수로 감싸서 문서 로딩 후 실행하도록 합니다.
					document.addEventListener(
									"DOMContentLoaded",
									function() {
										var userData = sessionStorage
												.getItem("loggedInUser");
										// user 데이터가 존재하는지 확인합니다.
										if (userData) {
											// JSON 파싱을 수행합니다.
											var user = JSON.parse(userData);

											// user 객체에서 id와 pw 값을 가져옵니다.
											var id = user.id;
											var name = user.name;
											var nickname = user.nickname;
											var address = user.address;
											var detailAddress = user.detailAddress;
											var birth = user.birth;
											var interest = user.interest;
											var email = user.email;
											var phone = user.phone;
											var sex = user.sex;
											var rank = user.rank;

											// 가져온 id와 pw 값을 출력합니다.
											document.getElementById("lid").textContent = id;
											document.getElementById("lname").textContent = name;
											document.getElementById("lnick").textContent = nickname;
											document.getElementById("laddr").textContent = address;
											document.getElementById("laddrd").textContent = detailAddress;
											document.getElementById("lbirth").innerText = birth;
											document.getElementById("linterest").textContent = interest;
											document.getElementById("lemail").innerText = email;
											document.getElementById("lphone").innerText = phone;
											document.getElementById("lsex").innerText = sex;
											document.getElementById("lrank").innerText = rank;
										} else {
											console.log("세션 스토리지에서 user 데이터를 찾을 수 없습니다.");
										}
									});
				</script>
				<div>
					<img class="center animated rollIn" src="img/a2.jpg" alt="avatar">
					<br>
					<button class="change-button">사진 변경하기</button>
				</div>
				<div class="profile-info">
					<label for="username">아이디: <span id="lid"></span></label>
<!-- 					<input>새 비밀번호: <span id="lpw"></span></input> -->
					<label for="fullname">실명: <span id="lname"></span></label>
					이름:<input type="text" name="name" id="lname"><br/>
					<label for="fullname">닉네임: <span id="lnick"></span></label>
					<label for="address">주소: <span id="laddr"></span> <span id="laddrd"></span></label>
<!-- 					<input>생일: <span id="lbirth"></span></input> -->
					<br>관심사항: <input id="linterest"></input>
					<label for="email">이메일: <span id="lemail"></span></label>
					<label for="phone">전화번호: <span id="lphone"></span></label>
					<label for="sex">성별: <span id="lsex"></span></label>
					<label for="rank">등급: <span id="lrank"></span></label>
				</div><br>
				<br>
				<br>
				<button>돌아가기</button>
				<div class="form-group" style="text-align: center;"></div>
			</div>
		</div>
		<br />
	</div>
</html>