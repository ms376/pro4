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
				<div>
					<img class="center animated rollIn" src="img/a2.jpg" alt="avatar">
					<br>
					<button class="change-button">사진 변경하기</button>
				</div>
				<div class="profile-info">
					<label for="username">아이디:</label>
					<p>ID</p>
					<label for="fullname">실명:</label>
					<p>홍길동</p>
					<label for="birthdate">생일:</label> <input type="text"
						id="birthdate" value="생일 정보">
					<button class="change-button">변경하기</button>

					<label for="address">주소:</label> <input type="text" id="address"
						value="주소 정보">
					<button class="change-button">변경하기</button>

					<label for="phone">전화번호:</label>
					<p>010-1236-1234</p>
					<label for="location">지역:</label> <input type="text" id="location"
						value="지역 정보">
					<button class="change-button">변경하기</button>
					<label for="interests">관심사항:</label> <input type="text"
						id="interests" value="관심사항 정보">
					<button class="change-button">변경하기</button>
				</div>
				<br>
				<br>
				<button>돌아가기</button>
				<!-- 					<div class="name"> -->
				<!-- 						이름: -->
				<%-- 						<%=session.getAttribute("UserName")%> --%>
				<!-- 					</div> -->
				<!-- 					<p class="subtitle"> -->
				<!-- 						아이디: -->
				<%-- 						<%=session.getAttribute("UserId")%></p> --%>
				<!-- 					<p class="subtitle"> -->
				<!-- 						가입일: -->
				<%-- 						<%=session.getAttribute("UserRegidate")%></p> --%>
				<!-- 					<br /> -->
				<!-- 					<p class="location"> -->
				<!-- 						<i class="btn"> </i><a href="../board/updtm.jsp" target="_blank"> -->
				<!-- 							회원정보 수정</a> -->
				<!-- 					</p> -->
				<!-- 					<p class="location"> -->
				<!-- 						<i class="btn"> </i><a href="../board/main.jsp" target="_blank"> -->
				<!-- 							돌아 가기</a> -->
				<!-- 					</p> -->
				<!-- 					<p class="location"> -->
				<!-- 						<i class="btn"> </i><a href="../board/outm.jsp" target="_blank"> -->
				<!-- 							회원 탈퇴</a> -->
				<!-- 					</p> -->
				<div class="form-group" style="text-align: center;"></div>
			</div>
		</div>
		<br />
	</div>
</html>