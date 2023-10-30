<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery.js"></script>
<script type="module" src="../js/profileUpdate2.js"></script>
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
					document
							.addEventListener(
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
											document.getElementById("lbirth").textContent = birth;
											document
													.getElementById("linterest").textContent = interest;
											document.getElementById("lemail").innerText = email;
											document.getElementById("lphone").innerText = phone;
											document.getElementById("lsex").innerText = sex;
											document.getElementById("lrank").innerText = rank;
										} else {
											console
													.log("세션 스토리지에서 user 데이터를 찾을 수 없습니다.");
										}
									});
				</script>
				<div class="profile-info">
					<label for="username">아이디: <span id="lid"></span></label> <label
						for="fullname">실명: <span id="lname"></span></label> <label
						for="fullname">닉네임: <span id="lnick"></span></label> <label
						for="address">주소: <span id="laddr"></span> <span
						id="laddrd"></span></label> <label for="birthdate">생일: <span
						id="lbirth"></span></label> <label for="interest">관심사항: <span
						id="linterest"></span></label> <label for="email">이메일: <span
						id="lemail"></span></label> <label for="phone">전화번호: <span
						id="lphone"></span></label> <label for="sex">성별: <span id="lsex"></span></label>
					<label for="rank">등급: <span id="lrank"></span></label>
				</div>
				<br> <a href="/profileC">정보수정</a>
				<button id="de">회원 탈퇴</button>
				<div class="form-group" style="text-align: center;"></div>
			</div>
		</div>
		<br />
	</div>
</html>