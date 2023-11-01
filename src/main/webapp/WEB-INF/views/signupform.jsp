<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>프로젝트3</title>
<script type="module" src="../js/register.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 주소 JS -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/address.js"></script>
</head>
<body>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-white bg-white fixed-top">
		<div class="container">
		
			<a href="/" class="navbar-brand" class="logo"><img
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
						class="nav-link dropdown-toggle ks4 f15"
						href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						target="_self"> 동취미 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4"
								href="#" target="_self">
								소개</a>
							<a class="dropdown-item ks4 fw4"
								href="#" target="_self">찾아오시는
								길</a>
							<a class="dropdown-item ks4 fw4"
								href="#" target="_self">공지사항</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15"
						href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						target="_self"> 게시판1 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4"
								href="#" target="_self">세부1</a>
							<a class="dropdown-item ks4 fw4" href="#"
								target="_self">세부2</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
					class="nav-link dropdown-toggle ks4 f15"
					href="#" id="navbarDropdownBlog"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					target="_self"> 게시판2 </a> <!-- 서브 -->
					<ul class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownPortfolio">
						<a class="dropdown-item ks4 fw4"
							href="#" target="_self">세부1</a>
						<a class="dropdown-item ks4 fw4" href="#"
							target="_self">세부2</a>
					</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15"
						href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						target="_self"> 커뮤니티 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a href="../board/freeboard.jsp" class="dropdown-item ks4 fw4" href="#" target="_self">잡담</a>
							<a href="../board/clubboard.jsp" class="dropdown-item ks4 fw4" href="#" target="_self">홍보</a>
							<a href="../board/reviewboard.jsp" class="dropdown-item ks4 fw4" href="#" target="_self">후기/리뷰</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15"
						href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						target="_self"> Myclub </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#"
								target="_self">찜한동아리</a>

							<a class="dropdown-item ks4 fw4" href="#"
								target="_self">게시판4세부2</a>

							<a class="dropdown-item ks4 fw4" href="#"
								target="_self">게시판4세부3</a>
						</ul></li>

					<li class="nav-item dropdown login"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							LOGIN </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">

							<a class="dropdown-item" href="#">새글</a>
							<a class="dropdown-item" href="#">1:1문의</a>
							<a href="../login/loginform.jsp" class="dropdown-item" href="#">로그인</a>
							<a class="../signup/signupform.jsp" class= "dropdown-item" href="#">회원가입</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<style>
/* mobile */
@media ( min-width : 1px) and (max-width: 1089px) {
	.ety-main {
		margin-bottom: 63px;
	}
}
@media ( min-width : 1090px) {
	.ety-main {
		margin-bottom: 130px;
	}
}
</style>
	<div class="ety-main"></div>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="http://smy.kr/js/jquery.register_form.js"></script>
<div class="container ety-mt margin-bottom-50 padding-top-50">
<form id="fregisterform" name="fregisterform" action="http://smy.kr/bbs/register_form_update.php" onsubmit="return fregisterform_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
<input type="hidden" name="w" value="">
<input type="hidden" name="url" value="%2Fbbs%2Fregister_form.php">
<input type="hidden" name="agree" value="1">
<input type="hidden" name="agree2" value="1">
<input type="hidden" name="cert_type" value="">
<input type="hidden" name="cert_no" value="">
<input type="hidden" name="mb_sex" value=""> <div id="register_form"  class="form_01">   
    <div class="tbl_frm01 tbl_wrap">
    
        <fieldset>
            <table class="userTable">
            <tr>
                <td class="userTit">
                    <span class="c_imp">*</span>아이디</td>
                    <td class="userVal">
                        <input type="text" id="id" value="" maxlength="15"
                        class="userInput" style="width:120px;"/>
                        <span style="margin-left:10px;"></span>
                <span style="color:#888888;">+4~15자, 첫 영문자, 영문자와 숫자 조합</span>         
            </td>
        </tr>
        <tr>
            <td class="userTit"><span class="c_imp">*</span>비밀번호</td>
            <td class="userVal">
                <input type="password" name="pw" value="" style="width:100px;" class="userInput"
                maxlength="25" />
            </td>
        </tr>
        <tr>
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
            <td class="userTit"><span class="c_imp">*</span>비밀번호 확인</td>
            <td class="userVal">
                <input type="password" id="pwChk" value="" style="width:100px;"
                maxlength="25" />
                <span style="margin:0 0 0 3px; color:#888888;">(확인을 위해 다시 입력해주세요.)</span>
            </td>
        </tr>
        <tr>
            <td class="userTit"><span style="margin-left:10px;"></span>생년월일</td>
            <td class="userVal">
                <label><input type="radio" name="sex" value="남자" checked>남자</label>
                <label><input type="radio" name="sex" value="여자">여자</label>
                <span style="margin-left:20px;"></span>
                <input type="text" id="birth" oninput='numlimit(this, 11)' class="userInput w40" maxlength="4"/><sapn style="margin:0 5px 0 1px">년</sapn>
                <span style="margin:0 0 0 3px;color:#888888;">(예 : 980101)</span>
            </td>
        </tr>
        <tr>
            <td class="userTit"><span class="c_imp">*</span>닉네임</td>
            <td class="userVal">
                <input type="text" name="nickname" value="" style="width:100px;" class="userInput"
                maxlength="25" />
                        <span style="margin-left:10px;"></span>
                <span style="color:#888888;">
            </td>
        </tr>
        <tr>
            <td class="userTit"><span class="c_imp">*</span> 이메일</td>
            <td class="userVal">
                <input type="text" id="email" value="" class="userInput w20" />
                <span style="margin-left:20px;"></span>
            </td>
        </tr>
        <tr>
            <td class="userTit"><span class="c_imp">*</span> 휴대전화</td>
            <td class="userVal">
                <input type="number" id="phone" value="" class="userInput w30"  oninput='numlimit(this, 11)'/>
                <span style="margin-left:20px;"></span>
            </td>
        </tr>
        
        <tr>
            <td class="userTit" rowspan="3">주소</td>
            <td class="userVal">
                <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
                <input type="text" id="postcode" placeholder="우편번호" disabled>(우편번호)</td>
        </tr>
        <tr>
            <td class="userVal">
                <input type="text" id="address" placeholder="주소" disabled>
                <input type="text" id="detailAddress" placeholder="상세주소">
	<input type="text" id="extraAddress" placeholder="참고항목" disabled>
                <span style="margin-left: 10px;"></span>
            </td>
        </tr>
        <tr>
            <td class="userTit"><span class="c_imp">*</span> 관심분야</td>
            <td class="userVal" style="padding:3px 0 3px 10px;">
                <select id="interest" class="userSelect w300">
                    <option value="">::관심분야 선택::</option>
                    <option value="스포츠">스포츠</option>
                    <option value="예술활동">예술활동</option>
                    <option value="봉사활동">봉사활동</option>
                    <option value="문화활동">문화활동</option>
                    <option value="맛집탐험">맛집탐험</option>
                </select>
            </td>
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
    </div>
</div>
<div class="btn_confirm">
    <a href="/" class="btn_cancel">돌아가기</a>
    <button type="submit" id="register" class="btn_submit">회원가입</button>
</div>
</form>
</div>
		<div class="row padding-top-20"></div>
	<div class="d-none d-sm-block margin-top-30"></div>
	<div class="margin-bottom-40"></div>
	<footer class="py-5 bg-dark">
		<div class="container footer">
			<div class="row">
				<div class="col-md-12 text-white text-center">
					<h2 class="en1">
						<img src="img/bb.png">
					</h2>
					<!-- image or text  -->
					<p class="ks2 f12"></p>
					<p class="ks2 f12">
						<i class="far fa-building"></i> 주소: 서울특별시 마포구 마포대로는 무너졌냐<br /> <i
							class="fas fa-phone"></i> 연락처 : 010-3865-4323 <br /></p>
				</div>
			</div>
		</div>
	</footer>
	<div class="container-fluid bg-gray">
		<div class="col-md-12 text-white text-center en1">
			프로젝트 기간 2023.10.8 ~ 2023.11.07 &copy; <a href="#" target="_blank"><span
				class="color-white ks4">동취미</span></a>
		</div>
	</div><!-- /container -->
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
	var jQuery = $.noConflict(true);
	</script>
    <script src="http://smy.kr/theme/theme_wide_17/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="http://smy.kr/theme/theme_wide_17/assets/parallax/js/parallax.min.js"></script>
	<script src="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/js/owl.carousel.min.js"></script>
	<!-- countdown -->
	<script type="text/javascript" src="http://smy.kr/theme/theme_wide_17/assets/countdown/js/kinetic.js"></script>
	<script type="text/javascript" src="http://smy.kr/theme/theme_wide_17/assets/countdown/js/jquery.final-countdown.js"></script>
	<script type="text/javascript" src="http://smy.kr/theme/theme_wide_17/js/bootstrap-dropdownhover.js"></script>
	<script type="text/javascript" src="http://smy.kr/theme/theme_wide_17/js/custom.js"></script>
</div>
<script>
$(function() {
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
});
</script>

<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/css/default.css?ver=220620">
<link rel="stylesheet"
	href="http://smy.kr/js/font-awesome/css/font-awesome.min.css?ver=220620">
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/skin/latest/basic_main_one/style.css?ver=220620">
<link
	href="//fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800|Noto+Sans+KR:100,300,400,500,700,900|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i|Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
	rel="stylesheet">
<!-------------------------- 구글아이콘 -------------------------->
<link rel="stylesheet"
	href="//fonts.googleapis.com/icon?family=Material+Icons">
<link
	href="http://smy.kr/theme/theme_wide_17/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/css/owl.theme.default.min.css">
<link
	href="http://smy.kr/theme/theme_wide_17/assets/countdown/css/demo.css"
	rel="stylesheet">
<link
	href="http://smy.kr/theme/theme_wide_17/assets/bootstrap-social/bootstrap-social.css"
	rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/animate.css"
	rel="stylesheet">
<link
	href="http://smy.kr/theme/theme_wide_17/css/bootstrap-dropdownhover.css"
	rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/modern-business.css"
	rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/ety.css"
	rel="stylesheet">
<script src="http://smy.kr/js/jquery-1.12.4.min.js?ver=2210172"></script>
<script src="http://smy.kr/js/jquery-migrate-1.4.1.min.js?ver=2210172"></script>
<script src="http://smy.kr/js/jquery.menu.js?ver=2210172"></script>
<script src="http://smy.kr/js/common.js?ver=2210172"></script>
<script src="http://smy.kr/js/wrest.js?ver=2210172"></script>
<script src="http://smy.kr/js/placeholders.min.js?ver=2210172"></script>
</body>
</html>
