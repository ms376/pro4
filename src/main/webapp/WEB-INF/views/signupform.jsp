<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>프로젝트3</title>
<script type="module" src="../js/register.js"></script>
<script src="../js/address.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<link href="../js/main.css" rel="stylesheet" type="text/css">
<!-- 주소 JS -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
</head>
<body>
	<!-------------------------- 네비게이션 -------------------------->
	<div class="container-fluid top-line fixed-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="tnb_index_left">
						<div class="sns_icon">
							<a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a>
						</div>
						<div class="sns_icon">
							<a href="#"><i class="fab fa-twitter"></i></a>
						</div>
						<div class="sns_icon">
							<a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
						</div>
					</div>
					<div id="tnb_index">
						<ul>
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
											var nickname = user.nickname;

											// 가져온 id와 pw 값을 출력합니다.
											document.getElementById("lid").textContent = id;
											document.getElementById("lnick").textContent = nickname;
										} else {
											console
													.log("세션 스토리지에서 user 데이터를 찾을 수 없습니다.");
										}
									});
				</script>
							<script>
document.addEventListener('DOMContentLoaded', function () {
    var loggedInUser = sessionStorage.getItem("loggedInUser");
    var navList = document.getElementById('tnb_index');
    
    if (!loggedInUser) {
        // 만약 로그인 데이터가 없다면, 원하는 HTML을 생성하여 출력합니다.
        navList.innerHTML = `
            <ul>
                <li><a href="/register"><i class="fa fa-user-plus" aria-hidden="true"></i> 회원가입</a></li>
                <li><a href="/login"><i class="fas fa-sign-in-alt"></i> 로그인</a></li>
            </ul>
        `;
    } else {
        // 로그인 데이터가 있다면, 다른 처리를 할 수 있습니다.
        // 예를 들어, 사용자 이름을 출력하거나 추가적인 메뉴를 제공할 수 있습니다.
        navList.innerHTML = `
            <ul>
                <li><a href="/mypage"><i class="fas fa-sign-in-alt"></i>내정보 <label id="lnick" style="color: red;"></label></a></li>
                <li><a href="javascript:void(0);" onclick="logoutDoc()"><i class="fas fa-sign-in-alt"></i>로그아웃</a></li>
            </ul>
         `;
    }
    // ... (기존의 코드는 그대로 유지)
});
</script>
							<script>
								// 로그인 세션스토리지 초기화(로그아웃)
								async
								function logoutDoc() {
									fetch('/logout', {
								        method: 'GET',
								    })
								    .then(response => {
								        if (response.ok) {
								            // 로그아웃이 성공한 경우, 리다이렉트할 페이지로 이동
									sessionStorage.clear();
								            window.location.href = '/';
								        }
								    })
								    .catch(error => {
								        console.error('로그아웃 실패:', error);
								    });
								}
							</script>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-white bg-white fixed-top">
		<div class="container">
			<a class="navbar-brand logo" href="http://localhost:8081/"><img
				src="img/dong1.png"></a>
			<button class="navbar-toggler navbar-dark navbar-toggler-right"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive"
				data-hover="dropdown"
				data-animations="fadeIn fadeIn fadeInUp fadeInRight">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">내정보</a>
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="/inte">마이페이지</a>
							<a class="dropdown-item ks4 fw4" href="/ques">찜목록</a>
							<a class="dropdown-item ks4 fw4" href="/ad1">관리자 전용</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">안내</a>
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="/inte">소개글</a>
							<a class="dropdown-item ks4 fw4" href="/ques">문의하기</a>
							<a class="dropdown-item ks4 fw4" href="/noticeboard">공지사항</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">홍보</a>
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="/dongboard">동아리</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">자유게시판</a>
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="/freeboard">자유</a>
							<a class="dropdown-item ks4 fw4" href="#">홍보</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">익명게시판</a>
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="/review">후기/리뷰</a>
						</ul></li>
					<li class="nav-item dropdown login"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">LOGIN</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="#">새글</a> <a class="dropdown-item"
								href="#">1:1문의</a> <a class="dropdown-item" href="/login"
								value="lnick">로그인</a> <a class="dropdown-item" href="/register">회원가입</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="ety-main"></div>
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<div class="container ety-mt margin-bottom-50 padding-top-50">
		<input type="hidden" name="w" value=""> <input type="hidden"
			name="url" value="%2Fbbs%2Fregister_form.php"> <input
			type="hidden" name="agree" value="1"> <input type="hidden"
			name="agree2" value="1"> <input type="hidden"
			name="cert_type" value=""> <input type="hidden"
			name="cert_no" value=""> <input type="hidden" name="mb_sex"
			value="">
		<div id="register_form" class="form_01">
			<div class="tbl_frm01 tbl_wrap">

				<fieldset>
					<table class="userTable">
						<tr>
							<td class="userTit"><span class="c_imp"></span>아이디</td>
							<td class="userVal">
							<input type="text" id="id" value=""	maxlength="15" class="userInput" style="width: 120px;" /> <span
								style="margin-left: 10px;"></span> <span style="color: #888888;"></span>
							</td>
						</tr>
						<tr>
							<td class="userTit"><span class="c_imp"></span>실명</td>
							<td class="userVal"><input type="text" name="name" id="name"
								style="width: 100px;" class="userInput" maxlength="7" /></td>
						</tr>
						<tr>
							<td class="userTit"><span class="c_imp"></span>비밀번호</td>
							<td class="userVal"><input type="password" name="pw" id="pw"
								style="width: 100px;" class="userInput" maxlength="25" /></td>
						</tr>
						<tr>
							<td class="userTit"><span class="c_imp"></span>비밀번호 확인</td>
							<td class="userVal"><input type="password" id="pwChk"
								class="pw"> <span id="checkPw" style="font-size: 12px;"></span>
							</td>
						</tr>
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
						<tr>
							<td class="userTit"><span style="margin-left: 10px;"></span>생년월일</td>
							<td class="userVal">
							<label>
							<input type="radio"	name="sex" value="남자" id="sex" checked>남자
							</label> 
							<label>
							<input type="radio" name="sex" id="sex" value="여자">여자
							</label> 
							<span style="margin-left: 20px;"></span> 
							<input type="text" id="birth" oninput='numlimit(this, 6)' class="userInput w40" maxlength="6" />
							<span style="margin: 0 5px 0 1px">년</span> 
							<span style="margin: 0 0 0 3px; color: #888888;">(예 : 980101)</span></td>
						</tr>
						<tr>
							<td class="userTit"><span class="c_imp"></span>닉네임</td>
							<td class="userVal"><input type="text" name="nickname"
								id="nickname" style="width: 100px;" class="userInput"
								maxlength="25" /> <span style="margin-left: 10px;"></span> <span
								style="color: #888888;"></td>
						</tr>
						<tr>
							<td class="userTit"><span class="c_imp"></span> 이메일</td>
							<td class="userVal"><input type="text" id="email" value=""
								class="userInput w20" /> <span style="margin-left: 20px;"></span>
							</td>
						</tr>
						<tr>
							<td class="userTit"><span class="c_imp"></span> 휴대전화</td>
							<td class="userVal"><input type="text" id="phone" value=""
								class="userInput w30" oninput='numlimit(this, 11)'
								maxlength="11" /> <span style="margin-left: 20px;"></span></td>
						</tr>

						<tr>
							<td class="userTit" rowspan="2">주소</td>
							<td class="userVal"><input type="button"
								onclick="execDaumPostcode()" value="우편번호 찾기"> <input
								type="text" id="postcode" placeholder="우편번호" disabled>(우편번호)</td>
						</tr>
						<tr>
							<td class="userVal"><input type="text" id="address"	placeholder="주소" disabled> 
							<input type="text" id="detailAddress" placeholder="상세주소"> 
							<input type="text" id="extraAddress" placeholder="참고항목" disabled>
							<span style="margin-left: 10px;"></span>
							</td>
						</tr>
						<tr>
							<td class="userTit"><span class="c_imp"></span> 관심분야</td>
							<td class="userVal" style="padding: 3px 0 3px 10px;">
							<select	id="interest" class="userSelect w300">
									<option value="">::관심분야 선택::</option>
									<option value="스포츠">스포츠</option>
									<option value="예술활동">예술활동</option>
									<option value="봉사활동">봉사활동</option>
									<option value="문화활동">문화활동</option>
									<option value="맛집탐험">맛집탐험</option>
							</select></td>
						</tr>
						<script>
							function numlimit(el, maxlength) {
								if (el.value.length > maxlength) {
									el.value = el.value.substr(0, maxlength);
								}
							}
						</script>
					</table>
				</fieldset>
				<div class="btn_confirm">
					<a href="/" class="btn_cancel">돌아가기</a>
					<button id="write" class="btn_submit">회원가입</button>
					
				</div>
			</div>
		</div>
	</div>
	<div class="row padding-top-20"></div>
	<div class="d-none d-sm-block margin-top-30"></div>
	<div class="margin-bottom-40"></div>
	<footer class="py-5 bg-dark">
		<div class="container footer">
			<div class="row">
				<div class="col-md-12 text-white text-center">
					<h2 class="en1">
						<img src="img/mam.png">
					</h2>
					<!-- image or text  -->
					<p class="ks2 f12"></p>
					<p class="ks2 f12">
						<i class="far fa-building"></i> 주소: 서울특별시 마포구 마포대로는 무너졌냐<br /> <i
							class="fas fa-phone"></i> 연락처 : 010-3865-4323 <br />
					</p>
				</div>
			</div>
		</div>
	</footer>
	<div class="container-fluid bg-gray">
		<div class="col-md-12 text-white text-center en1">
			프로젝트 기간 2023.10.8 ~ 2023.11.07 &copy; <a href="#" target="_blank"><span
				class="color-white ks4">동취미</span></a>
		</div>
	</div>
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
		var jQuery = $.noConflict(true);
	</script>
	<script
		src="../js/dong/theme/theme_wide_17/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="../js/dong/theme/theme_wide_17/assets/parallax/js/parallax.min.js"></script>
	<script
		src="../js/dong/theme/theme_wide_17/assets/owlcarousel/js/owl.carousel.min.js"></script>
	<!-- countdown -->
	<script type="text/javascript"
		src="../js/dong/theme/theme_wide_17/assets/countdown/js/kinetic.js"></script>
	<script type="text/javascript"
		src="../js/dong/theme/theme_wide_17/assets/countdown/js/jquery.final-countdown.js"></script>
	<script type="text/javascript"
		src="../js/dong/theme/theme_wide_17/js/bootstrap-dropdownhover.js"></script>
	<script type="text/javascript"
		src="../js/dong/theme/theme_wide_17/js/custom.js"></script>
</body>
</html>
