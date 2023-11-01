<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="module" src="../js/register.js"></script>
<title>프로젝트3</title>
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/css/default.css?ver=220620">
<link rel="stylesheet"
	href="http://smy.kr/js/font-awesome/css/font-awesome.min.css?ver=220620">
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/skin/latest/basic_main_one/style.css?ver=220620">
<script>
	var g5_url = "http://smy.kr";
	var g5_bbs_url = "http://smy.kr/bbs";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_editor = "";
	var g5_cookie_domain = "";
	var g5_theme_shop_url = "http://smy.kr/theme/theme_wide_17/shop";
	var g5_shop_url = "http://smy.kr/shop";
</script>

<link
	href="//fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800|Noto+Sans+KR:100,300,400,500,700,900|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i|Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
	rel="stylesheet">

<!-------------------------- 구글아이콘 -------------------------->
<link rel="stylesheet"
	href="//fonts.googleapis.com/icon?family=Material+Icons">

<!-- Bootstrap core CSS -->
<link
	href="http://smy.kr/theme/theme_wide_17/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<!-- owl Carousel -->
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/css/owl.theme.default.min.css">

<!-- countdown -->
<link
	href="http://smy.kr/theme/theme_wide_17/assets/countdown/css/demo.css"
	rel="stylesheet">
<!-- bootstrap-social icon -->
<link
	href="http://smy.kr/theme/theme_wide_17/assets/bootstrap-social/bootstrap-social.css"
	rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/animate.css"
	rel="stylesheet">
<link
	href="http://smy.kr/theme/theme_wide_17/css/bootstrap-dropdownhover.css"
	rel="stylesheet">
<!-- Custom & ety -->
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
</head>
<body>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-------------------------- 네비게이션 -------------------------->
	<div class="container-fluid top-line fixed-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="tnb_index_left">
						<!-- social -->
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
							<li><a href="#"><i
									class="fas fa-sign-in-alt"></i> 문의사항</a></li>
							<li><a href="../board/signupform.jsp"><i
									class="fa fa-user-plus" aria-hidden="true"></i> 회원가입</a></li>
							<li><a href="../login/loginform.jsp"><i
									class="fas fa-sign-in-alt"></i> 로그인</a></li>
						</ul>
					</div>
				</div>
				<!-- /col -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>

	<nav
		class="navbar fixed-top navbar-expand-lg navbar-white bg-white fixed-top">
		<div class="container">
		
			<a class="navbar-brand" href="로고" class="logo"><img
				src="img/as.png"></a>
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
						target="_self"> 자유게시판 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#"
								target="_self">잡담</a>

							<a class="dropdown-item ks4 fw4" href="#"
								target="_self">홍보</a>

							<a class="dropdown-item ks4 fw4" href="#"
								target="_self">후기/리뷰</a>
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

/* desktop */
@media ( min-width : 1090px) {
	.ety-main {
		margin-bottom: 130px;
	}
}
</style>
	<div class="ety-main"></div>
	
	
	<!-- 회원정보 입력/수정 시작 { -->
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
    <div>
        <h2>사이트 이용정보 입력</h2>
        <ul>
            <li>
                <label for="reg_mb_id" class="sound_only">아이디<strong>필수</strong></label>
                <input type="text" name="mb_id" value="" id="id" required  class="frm_input half_input required " minlength="3" maxlength="20" placeholder="아이디">
                <span id="msg_mb_id"></span>
                <span class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span>
            </li>
            <li>
                <label for="reg_mb_password" class="sound_only">비밀번호<strong class="sound_only">필수</strong></label>
                <input type="password" name="mb_password" id="password" required class="frm_input half_input required" minlength="3" maxlength="20" placeholder="비밀번호">

                <label for="reg_mb_password_re" class="sound_only">비밀번호 확인<strong>필수</strong></label>
                <input type="password" name="mb_password_re" id="password_re" required class="frm_input half_input right_input required" minlength="3" maxlength="20" placeholder="비밀번호 확인">
            </li>
        </ul>
    </div>

    <div class="tbl_frm01 tbl_wrap">
        <h2>개인정보 입력</h2>

        <ul>
        	<li>
       	        <label for="reg_mb_nick" class="sound_only">닉네임<strong>필수</strong></label>
               
                   <input type="hidden" name="mb_nick_default" value="">
                   <input type="text" name="mb_nick" value="" id="#" required class="frm_input required nospace  half_input" size="10" maxlength="20" placeholder="생년월일">
                   <span id="msg_mb_nick"></span>
                   <label><input type="radio" name="sex" value="sex" checked>남자</label>
               	   <label><input type="radio" name="sex" value="sex" >여자</label>
                   <span class="frm_info">
                        예: 980101<br>
                    </span>
                
            </li>
            <li>
                <label for="reg_mb_name" class="sound_only">이름<strong>필수</strong></label>
                <input type="text" id="reg_mb_name" name="name" value="" required  class="frm_input half_input required " size="10" placeholder="이름">
                                                
                
            </li>
                        <li>
                <label for="reg_mb_nick" class="sound_only">닉네임<strong>필수</strong></label>
                
                    <input type="hidden" name="mb_nick_default" value="">
                    <input type="text" name="mb_nick" value="" id="nickname" required class="frm_input required nospace  half_input" size="10" maxlength="20" placeholder="닉네임">
                    <span id="msg_mb_nick"></span>
                    <span class="frm_info">
                        공백없이 한글,영문,숫자만 입력 가능 (한글2자, 영문4자 이상)<br>
                        닉네임을 바꾸시면 앞으로 60일 이내에는 변경 할 수 없습니다.
                    </span>
                
            </li>
            
            
            <li>
                <label for="reg_mb_email" class="sound_only">E-mail<strong>필수</strong></label>
                
                                <input type="hidden" name="old_email" value="">
                <input type="text" name="mb_email" value="" id="email" required class="frm_input email full_input required" size="70" maxlength="100" placeholder="E-mail">
            
            </li>

            
            <li>
            
                            <label for="reg_mb_hp" class="sound_only">휴대폰번호<strong>필수</strong></label>
                
                <input type="text" name="mb_hp" value="" id="reg_mb_hp" required class="frm_input right_input half_input required" maxlength="20" placeholder="휴대폰번호">
                                        </li>
                    </ul>
    </div>
</div>
<button id="write">회원가입</button>
<button onclick="/">취소</button>
</form>


</div>
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
	var jQuery = $.noConflict(true);
	</script>
    <script src="http://smy.kr/theme/theme_wide_17/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="http://smy.kr/theme/theme_wide_17/assets/parallax/js/parallax.min.js"></script>
	<script src="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/js/owl.carousel.min.js"></script>
    <button type="button" id="top_btn">
    	<i class="fa fa-arrow-up" aria-hidden="true"></i><span class="sound_only">상단으로</span>
    </button>
    <script>
    $(function() {
        $("#top_btn").on("click", function() {
            $("html, body").animate({scrollTop:0}, '500');
            return false;
        });
    });
    </script>
</div>
</body>
</html>
