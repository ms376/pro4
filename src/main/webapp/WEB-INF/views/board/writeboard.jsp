<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>프로젝트3</title>
<link rel="stylesheet"	href="http://smy.kr/theme/theme_wide_17/css/default.css?ver=220620">
<link rel="stylesheet"	href="http://smy.kr/js/font-awesome/css/font-awesome.min.css?ver=220620">
<link rel="stylesheet"	href="http://smy.kr/theme/theme_wide_17/skin/latest/basic_main_one/style.css?ver=220620">
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
<link href="//fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800|Noto+Sans+KR:100,300,400,500,700,900|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i|Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons">
<link href="http://smy.kr/theme/theme_wide_17/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="//use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link rel="stylesheet" href="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/css/owl.carousel.min.css">
<link rel="stylesheet" href="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/css/owl.theme.default.min.css">
<link href="http://smy.kr/theme/theme_wide_17/assets/countdown/css/demo.css" rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/assets/bootstrap-social/bootstrap-social.css" rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/animate.css" rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/bootstrap-dropdownhover.css" rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/modern-business.css" rel="stylesheet">
<link href="http://smy.kr/theme/theme_wide_17/css/ety.css" rel="stylesheet">
<script src="http://smy.kr/js/jquery-1.12.4.min.js?ver=2210172"></script>
<script src="http://smy.kr/js/jquery-migrate-1.4.1.min.js?ver=2210172"></script>
<script src="http://smy.kr/js/jquery.menu.js?ver=2210172"></script>
<script src="http://smy.kr/js/common.js?ver=2210172"></script>
<script src="http://smy.kr/js/wrest.js?ver=2210172"></script>
<script src="http://smy.kr/js/placeholders.min.js?ver=2210172"></script>
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
							<li><a href="#"><i class="fas fa-sign-in-alt"></i> 문의사항</a></li>
							<li><a href="/prf"><label id="lnick" style="color: red;"></label></a>
								<div style="font-size: 14px; color: white;">님 어서오세요.</div></li>
							<script>
document.addEventListener('DOMContentLoaded', function () {
    var loggedInUser = sessionStorage.getItem("loggedInUser");
    var navList = document.getElementById('tnb_index');

    if (!loggedInUser) {
        // 만약 로그인 데이터가 없다면, 원하는 HTML을 생성하여 출력합니다.
        navList.innerHTML = `
            <ul>
                <li><a href="#"><i class="fas fa-sign-in-alt"></i> 문의사항</a></li>
                <li><a href="/register"><i class="fa fa-user-plus" aria-hidden="true"></i> 회원가입</a></li>
                <li><a href="/login"><i class="fas fa-sign-in-alt"></i> 로그인</a></li>
                <li><a href="/a"><i class="fas fa-sign-in-alt"></i> 적용전 회원가입</a></li>
            </ul>
        `;
    } else {
        // 로그인 데이터가 있다면, 다른 처리를 할 수 있습니다.
        // 예를 들어, 사용자 이름을 출력하거나 추가적인 메뉴를 제공할 수 있습니다.
        navList.innerHTML = `
            <ul>
                <li><a href="#"><i class="fas fa-sign-in-alt"></i> 문의사항</a></li>
                <li><a href="/prf"><i class="fas fa-sign-in-alt"></i><label id="lnick" style="color: red;"></label></a> 님 어서오세요.</li>
                <li><a href="javascript:void(0);" onclick="logoutDoc()"><i class="fas fa-sign-in-alt"></i> 적용전 로그아웃</a></li>
            </ul>
        `;
    }
});
</script>
							<script>
								// 로그인 세션스토리지 초기화(로그아웃)
								async
								function logoutDoc() {
									sessionStorage.clear();
									window.location.href = '/';
								}
							</script>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<style>
.collapse.in{
    -webkit-transition-delay: 4s;
    transition-delay: 5s;
    visibility: visible;
}
</style>
<nav
		class="navbar fixed-top navbar-expand-lg navbar-white bg-white fixed-top">
		<div class="container">
			<a class="navbar-brand logo" href="http://localhost:8081/"><img src="img/dong1.png"></a>
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
						class="nav-link dropdown-toggle ks4 f15" href="#" id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" > 동취미
					</a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" > 소개</a>
							<a class="dropdown-item ks4 fw4" href="#" >찾아오시는 길</a>
							<a class="dropdown-item ks4 fw4" href="#" >공지사항</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" >
							게시판1 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" >세부1</a>
							<a class="dropdown-item ks4 fw4" href="#" >세부2</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" >
							게시판2 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" >세부1</a>
							<a class="dropdown-item ks4 fw4" href="#" >세부2</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" >
							자유게시판 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" >잡담</a>
							<a class="dropdown-item ks4 fw4" href="#" >홍보</a>
							<a class="dropdown-item ks4 fw4" href="#" >후기/리뷰</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" >
							Myclub </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" >찜한동아리</a>
							<a class="dropdown-item ks4 fw4" href="#" >게시판4세부2</a>
							<a class="dropdown-item ks4 fw4" href="#" >게시판4세부3</a>
						</ul></li>

					<li class="nav-item dropdown login"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							LOGIN </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">

							<a class="dropdown-item" href="#">새글</a> <a class="dropdown-item"
								href="#">1:1문의</a> <a class="dropdown-item" href="#">로그인</a> <a
								class="dropdown-item" href="#">회원가입</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
<style>
@media (min-width: 1px) and (max-width: 1089px) {
	.ety-main{margin-bottom:63px;}
}
@media (min-width: 1090px) {
	.ety-main{margin-bottom:130px;}
}
</style>
<div class="ety-main"></div>
<!-------------------------- 게시판 상단 배경 수정하는 곳 -------------------------->
<!-------------------------- ./게시판 상단 배경 수정하는 곳 -------------------------->
<section id="bo_w">
    <form name="fwrite" id="fwrite" action="http://smy.kr/bbs/qawrite_update.php" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
    <input type="hidden" name="w" value="">
    <input type="hidden" name="qa_id" value="0">
    <input type="hidden" name="sca" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="page" value="">
    <input type="hidden" name="token" value="52fd4b986ff8db83bf3b5666705c02cf">
    <input type="hidden" name="qa_html" value="1">
    <div class="form_01">
        <ul>
            <div class="col-md-12"><br><br>
					<div class="table-responsive">
						<form name="writeFrm" method="post" action="../aboutpost/WriteProcess.jsp" onsubmit="return validateForm(this);">
				<div class="form-group">
							<select class="form-control" name="searchField">
								<option>잡담</option>
								<option>홍보</option>
								<option>리뷰/후기</option>
							</select>
						</div>
		<table class="table table-bordered table-striped" style="width: 80%;">
			<tbody><tr>
				<td align="right"><h5>제목</h5></td>
				<td><input type="text" name="title" style="width: 90%;"></td>
			</tr>
			<tr>
				<td align="right"><h5>내용</h5></td>
				<td><textarea name="content" style="width: 90%; height: 200px;"></textarea>
				</td>
			</tr>
		</tbody></table>
	</form>
					</div>
				</div>
	</form>
            </li>
            <li class="bo_w_flie">
                <div class="file_wr">
                    <label for="bf_file_1" class="lb_icon"><i class="fa fa-download" aria-hidden="true"></i><span class="sound_only"> 파일 #1</span></label>
                    <input type="file" name="bf_file[1]" id="bf_file_1" title="파일첨부 1 :  용량 1,048,576 바이트 이하만 업로드 가능" class="frm_file">
                                   </div>
            </li>
        </ul>
    </div>
    <div class="btn_confirm write_div">
        <a href="#" class="btn_cancel btn">취소</a>
        <button type="submit" id="btn_submit" accesskey="s" class="btn_submit btn">작성완료</button>
    </div>
    </form>
    <script>
    </script>
</section>
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
               <p class="ks2 f12"></p>
               <p class="ks2 f12">
                  <i class="far fa-building"></i> 주소: 서울특별시 마포구 마포대로는 무너졌냐<br /> <i
                     class="fas fa-phone"></i> 연락처 : 010-3865-4323 <br /> <i
                     class="fas fa-fax"></i> 팩스번호 : 000-0000-0000<br />
               </p>
            </div>
         </div>
      </div>
   </footer>
   <div class="container-fluid bg-gray">
      <div class="col-md-12 text-white text-center en1">
         Copyright 1988~2023 &copy; <a href="http://smy.kr" target="_blank"><span
            class="color-white ks4">동취미</span></a>
      </div>
   </div>
   <script type="text/javascript"  src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   <script>
   var jQuery = $.noConflict(true);
   </script>
   <script src="http://smy.kr/theme/theme_wide_17/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="http://smy.kr/theme/theme_wide_17/assets/parallax/js/parallax.min.js"></script>
   <script src="http://smy.kr/theme/theme_wide_17/assets/owlcarousel/js/owl.carousel.min.js"></script>
   <!-- countdown -->
   <script type="text/javascript" src="http://smy.kr/theme/theme_wide_17/assets/countdown/js/kinetic.js"></script>
   <script type="text/javascript"
      src="http://smy.kr/theme/theme_wide_17/assets/countdown/js/jquery.final-countdown.js"></script>
   <script type="text/javascript" src="http://smy.kr/theme/theme_wide_17/js/bootstrap-dropdownhover.js"></script>
   <script type="text/javascript" src="http://smy.kr/theme/theme_wide_17/js/custom.js"></script>
</script>
</body>
</html>