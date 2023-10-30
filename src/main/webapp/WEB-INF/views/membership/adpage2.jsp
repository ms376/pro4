<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="module" src="../js/ad2.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
												.getItem("selecteddata");
										// user 데이터가 존재하는지 확인합니다.
										if (userData) {
											// JSON 파싱을 수행합니다.
											var user = JSON.parse(userData);

											// user 객체에서 id와 pw 값을 가져옵니다.
											var id = user.id;
											var pw = user.pw;
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
											document.getElementById("lpw").textContent = pw;
											document.getElementById("lname").textContent = name;
											document.getElementById("lnick").textContent = nickname;
											document.getElementById("laddr").textContent = address;
											document.getElementById("laddrd").textContent = detailAddress;
											document.getElementById("lbirth").textContent = birth;
											document.getElementById("linterest").textContent = interest;
											document.getElementById("lemail").innerText = email;
											document.getElementById("lphone").innerText = phone;
											document.getElementById("lsex").innerText = sex;
											document.getElementById("lrank").textContent = rank;
										} else {
											console.log("세션 스토리지에서 user 데이터를 찾을 수 없습니다.");
										}
									});
				</script>
				<div>
					<img class="center animated rollIn" src="img/a2.jpg" alt="avatar">
					<br>
					<form action="uploadOk" method="post" enctype="multipart/form-data">
						사진: <input type="file" name="filename"><br /> <input
							type="submit" value="변경하기">
					</form>
				</div>
				<form id="updateForm">
					<div class="profile-info">
						<!-- 새 비밀번호, 실명, 관심사항, 생일, 전화번호, 성별 -->
						<label for="username">아이디: 
						<span id="lid"></span></label> 
						<label for="name">실명: <span id="lname"></span></label> 
						<label for="password">기존비밀번호: <span id="lpw"></span></label> 
						<label for="newPassword">새 비밀번호: <input type="password" id="newpw" class="pw"></label>
						<label for="newPasswordConfirm">비밀번호 재확인: <input type="password" id="newpwChk" class="pw"><span id="checkPw" style="font-size: 12px;"></span></label>
<script>
	$('.pw').focusout(function(){
    	let pass1 = $("#newpw").val();
        let pass2 = $("#newpwChk").val();
        
        if (pass1 !== "" || pass2 !== ""){
        	if (pass1 === pass2){
            	$("#checkPw").html(' 비밀번호 일치');
            	$("#checkPw").css('color', 'green');
            } else {
            	$("#checkPw").html(' 비밀번호 불일치');
                $("#checkPw").css('color', 'red');
            }
        }
    });
</script>
						<label for="nickname">기존닉네임: <span id="lnick"></span></label>  
						<label for="nickname">새 닉네임: <input type="text" id="newnickname"></label>
						<label for="address">기존주소: <span id="laddr"></span> <span id="laddrd"></span></label>
						<input type="text" id="postcode" placeholder="우편번호"disabled>
						<input type="button" id="nadd" value="우편번호 찾기">
						<br>
						<input type="text" id="newaddr" placeholder="주소" disabled>
						<br>
						<input type="text" id="newaddrd" placeholder="상세주소">
						<input type="text" id="extraAddress" placeholder="참고항목" disabled> 
						<label for="birth">기존생일: <span id="lbirth"></span></label> 
						<label for="birth">새 생일: <input type="number" id="newbirth" oninput='numlimit(this, 6)'><h5>ex) 001225</h5></label> 
						<label for="interest">기존관심사항: <span id="linterest"></span></label> 
						<label for="newinterest">새 성별:</label>
						<select id="newinterest" name="interest">
   						<option value="운동">운동</option>
   						<option value="게임">게임</option>
						</select> 
						<label for="email">기존 이메일: <span id="lemail"></span></label> 
						<label for="email">새 이메일: <input type="text" id="newemail"></label> 
						<label for="phone">기존전화번호: <span id="lphone"></span></label> 
						<label for="phone">새 전화번호: <input type="number" id="newphone" oninput='numlimit(this, 11)'></label> 
						<label for="sex">성별: <span id="lsex"></span></label> 
						<label for="newsex">성별:</label>
						<select id="newsex" name="sex">
   						<option value="남자">남자</option>
   						<option value="여자">여자</option>
						</select>
						<label for="rank">기존 등급: <span id="lrank"></span></label> 
						<label for="newrank">등급설정 :</label>
						<select id="newrank" name="rank">
   						<option value="신규">신규</option>
   						<option value="1a">등급1</option>
   						<option value="2b">등급2</option>
   						<option value="3c">등급3</option>
   						<option value="4d">등급4</option>
   						<option value="5e">등급5</option>
						</select>
					</div><br>
					<button type="button" id="updatepro">저장</button>
				</form>
				<button>돌아가기</button>
				<div class="form-group" style="text-align: center;"></div>
			</div>
		</div>
		<br />
	</div>
	<script>
		function numlimit(el, maxlength) {
			  if(el.value.length > maxlength)  {
			    el.value 
			      = el.value.substr(0, maxlength);
			  }
			}
		</script>
</html>