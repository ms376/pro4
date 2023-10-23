<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>프로젝트3</title>
<script type="module" src="../js/register.js"></script>
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
							<li><a href="/register"><i class="fa fa-user-plus"
									aria-hidden="true"></i> 회원가입</a></li>
							<li><a href="/login"><i class="fas fa-sign-in-alt"></i>
									로그인</a></li>
							<li><a href="/a"><i class="fas fa-sign-in-alt"></i> 적용전
									회원가입</a></li>
							<li><a href="/prf"><i class="fas fa-sign-in-alt"></i>
									적용전 정보수정</a></li>
							<script>
								// 로그인 세션스토리지 초기화(로그아웃)
								async
								function logoutDoc() {
									sessionStorage.clear();
									window.location.href = '/';
								}
							</script>
							<li><a href="javascript:void(0);" onclick="logoutDoc()"><i class="fas fa-sign-in-alt"></i>
									적용전 로그아웃</a></li>
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
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" target="_self"> 동취미
					</a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" target="_self"> 소개</a>
							<a class="dropdown-item ks4 fw4" href="#" target="_self">찾아오시는
								길</a>
							<a class="dropdown-item ks4 fw4" href="#" target="_self">공지사항</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" target="_self">
							게시판1 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" target="_self">세부1</a>
							<a class="dropdown-item ks4 fw4" href="#" target="_self">세부2</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" target="_self">
							게시판2 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" target="_self">세부1</a>
							<a class="dropdown-item ks4 fw4" href="#" target="_self">세부2</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" target="_self">
							자유게시판 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" target="_self">잡담</a>

							<a class="dropdown-item ks4 fw4" href="#" target="_self">홍보</a>

							<a class="dropdown-item ks4 fw4" href="#" target="_self">후기/리뷰</a>

						</ul></li>

					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" target="_self">
							Myclub </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" target="_self">찜한동아리</a>

							<a class="dropdown-item ks4 fw4" href="#" target="_self">게시판4세부2</a>

							<a class="dropdown-item ks4 fw4" href="#" target="_self">게시판4세부3</a>
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
	<div class="padding-top-50 padding-bottom-30">
		<div class="container">
			<div class="center-heading">
				<h2 class="en1">
					프로젝트3<strong> 동아리 모음</strong>>
				</h2>
				<script>
					// 사용자 정보 출력을 함수로 감싸서 문서 로딩 후 실행하도록 합니다.
					document
							.addEventListener(
									"DOMContentLoaded",
									function() {
										var userData = sessionStorage
												.getItem("user");
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

				<div>
					<p>
						사용자 아이디:<span id="lid"></span>
					</p>
					<p>
						사용자 닉네임:<span id="lnick"></span>
					</p>
					<!-- 필요한 다른 사용자 정보도 동일한 방식으로 표시 가능합니다. -->
				</div>
				<span class="center-line"></span>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<iframe width="100%" height="315"
						src="https://www.youtube.com/embed/R3WlUP1gE90?si=zcYTO0Ev74-o9Dfk"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe>

				</div>
				<div class="col-lg-6">
					<h2 class="en1">헬스동아리 소개</h2>
					<p class="ks4">
						<strong>쇼미더 바디</strong>
					</p>
					<p class="ks4">
						<a href="https://www.youtube.com/watch?v=uCfjXTD0C8A"
							target="_blank">유튜브 바로가기</a>
					</p>
					<br>
					<h2 class="en1">테니스 동아리</h2>
					<p class="ks4">
						<strong>테니스동아리 팀 : 소닉 소개입니다.</strong>
					</p>
					<p class="ks4">
						<a href="https://www.youtube.com/watch?v=Ov6fK54NmWs"
							target="_blank">유튜브 바로가기</a>
					</p>
					<p class="ks4">지기티비 복귀하나요???</p>
				</div>
			</div>
		</div>
	</div>




	<!-------------------------- 게시판01 -------------------------->
	<div class="padding-top-50">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
					<style>
.main_one_title {
	position: relative;
	display: block;
	width: 191px;
	text-align: left;
	color: #111;
	padding: 15px 0px 15px 0px;
	font-style: normal;
	font-weight: 700;
	font-size: 16px;
	margin-left: 15px;
}

.one_more {
	position: absolute;
	top: 15px;
	right: 15px;
	font-size: 22px
}

.lat_list_one a {
	font-size: 14px;
	font-weight: 600;
}
</style>

					<div class="row">
						<div class="col-md-12 main_one_title ks4">게시판1</div>
					</div>
					<a href="#" class="one_more"><span class="sound_only">게시판1세부</span><i
						class="fa fa-plus" aria-hidden="true"
						style="font-size: 22px; line-height: 1px;"></i><span
						class="sound_only"> 더보기</span></a>
					<div class="lat_list_one">
						<ul>
							<li class="ks4"><a href="#"> 동아리동아리동아리1</a> <span
								class="lt_date hidden-xs hidden-sm">06-16</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리1</a> <span
								class="lt_date hidden-xs hidden-sm">05-18</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리1</a> <span
								class="lt_date hidden-xs hidden-sm">03-13</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리1</a> <span
								class="lt_date hidden-xs hidden-sm">03-13</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리1</a> <span
								class="lt_date hidden-xs hidden-sm">02-15</span></li>
						</ul>

					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
					<style>
.main_one_title {
	position: relative;
	display: block;
	width: 191px;
	text-align: left;
	color: #111;
	padding: 15px 0px 15px 0px;
	font-style: normal;
	font-weight: 700;
	font-size: 16px;
	margin-left: 15px;
}

.one_more {
	position: absolute;
	top: 15px;
	right: 15px;
	font-size: 22px
}

.lat_list_one a {
	font-size: 14px;
	font-weight: 600;
}
</style>

					<div class="row">
						<div class="col-md-12 main_one_title ks4">게시판2</div>
					</div>
					<a href="http://smy.kr/bbs/board.php?bo_table=sm08_4"
						class="one_more"><span class="sound_only">게시판2</span><i
						class="fa fa-plus" aria-hidden="true"
						style="font-size: 22px; line-height: 1px;"></i><span
						class="sound_only"> 더보기</span></a>
					<div class="lat_list_one">
						<ul>
							<li class="ks4"><a href="#"> 동아리동아리동아리2</a> <span
								class="lt_date hidden-xs hidden-sm">10-13</span></li>
							<li class="ks4"><span class="hot_icon">H<span
									class="sound_only">인기글</span></span><a href="#"> 인기글표시--</a> <span
								class="lt_date hidden-xs hidden-sm">10-06</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리2</a> <span
								class="lt_date hidden-xs hidden-sm">09-27</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리2</a> <span
								class="lt_date hidden-xs hidden-sm">09-27</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리2</a> <span
								class="lt_date hidden-xs hidden-sm">09-27</span></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="padding-top-50">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
					<style>
.main_one_title {
	position: relative;
	display: block;
	width: 191px;
	text-align: left;
	color: #111;
	padding: 15px 0px 15px 0px;
	font-style: normal;
	font-weight: 700;
	font-size: 16px;
	margin-left: 15px;
}

.one_more {
	position: absolute;
	top: 15px;
	right: 15px;
	font-size: 22px
}

.lat_list_one a {
	font-size: 14px;
	font-weight: 600;
}
</style>

					<div class="row">
						<div class="col-md-12 main_one_title ks4">게시판3</div>
					</div>
					<a href="#" class="one_more"><span class="sound_only">게시판3</span><i
						class="fa fa-plus" aria-hidden="true"
						style="font-size: 22px; line-height: 1px;"></i><span
						class="sound_only"> 더보기</span></a>
					<div class="lat_list_one">
						<ul>
							<li class="ks4"><a href="#"> 동아리동아리동아리3</a> <span
								class="lt_date hidden-xs hidden-sm">09-22</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리3</a> <span
								class="lt_date hidden-xs hidden-sm">09-22</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리3</a> <span
								class="lt_date hidden-xs hidden-sm">09-22</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리3</a> <span
								class="lt_date hidden-xs hidden-sm">09-04</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리3</a> <span
								class="lt_date hidden-xs hidden-sm">09-01</span></li>
						</ul>

					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
					<style>
.main_one_title {
	position: relative;
	display: block;
	width: 191px;
	text-align: left;
	color: #111;
	padding: 15px 0px 15px 0px;
	font-style: normal;
	font-weight: 700;
	font-size: 16px;
	margin-left: 15px;
}

.one_more {
	position: absolute;
	top: 15px;
	right: 15px;
	font-size: 22px
}

.lat_list_one a {
	font-size: 14px;
	font-weight: 600;
}
</style>

					<div class="row">
						<div class="col-md-12 main_one_title ks4">게시판4</div>
					</div>
					<a href="#" class="one_more"><span class="sound_only">게시판4</span><i
						class="fa fa-plus" aria-hidden="true"
						style="font-size: 22px; line-height: 1px;"></i><span
						class="sound_only"> 더보기</span></a>
					<div class="lat_list_one">
						<ul>
							<li class="ks4"><a href="#"> 동아리동아리동아리4</a> <span
								class="lt_date hidden-xs hidden-sm">09-27</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리4</a> <span
								class="lt_date hidden-xs hidden-sm">09-01</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리4</a> <span
								class="lt_date hidden-xs hidden-sm">08-11</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리4</a> <span
								class="lt_date hidden-xs hidden-sm">07-21</span></li>
							<li class="ks4"><a href="#"> 동아리동아리동아리4</a> <span
								class="lt_date hidden-xs hidden-sm">06-16</span></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row padding-top-20"></div>
	<div class="d-none d-sm-block margin-top-30"></div>
	</div>
	<div class="margin-bottom-40"></div>
	</div>
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
							class="fas fa-phone"></i> 연락처 : 010-3865-4323 <br /> <i
							class="fas fa-fax"></i> 팩스번호 : 000-0000-0000<br />
					</p>

				</div>
			</div>
		</div>
		<!--/container-->
	</footer>
	<div class="container-fluid bg-gray">
		<div class="col-md-12 text-white text-center en1">
			Copyright 1999~9999 &copy; <a href="#" target="_blank"><span
				class="color-white ks4">프로젝트3</span></a>
		</div>
	</div>


	<script>
		$(document).ready(function() {
			//owl
			jQuery(".owl-carousel").owlCarousel({
				autoplay : true,
				autoplayTimeout : 3000,// 1000 -> 1초
				autoplayHoverPause : true,
				loop : true,
				margin : 10,//이미지 사이의 간격
				nav : false,
				responsive : {
					0 : {
						items : 2
					// 모바일
					},
					600 : {
						items : 3
					// 브라우저 600px 이하
					},
					1000 : {
						items : 4
					// 브라우저 100px 이하
					}
				}
			});

			// countdown
			'use strict';
			jQuery('.countdown').final_countdown({
				'start' : 1362139200,
				'end' : 1388461320,
				'now' : 1387461319
			});
		});
	</script>




	<button type="button" id="top_btn">
		<i class="fa fa-arrow-up" aria-hidden="true"></i><span
			class="sound_only">상단으로</span>
	</button>
	<script>
		$(function() {
			$("#top_btn").on("click", function() {
				$("html, body").animate({
					scrollTop : 0
				}, '500');
				return false;
			});
		});
	</script>
	</div>


	<!-- } 하단 끝 -->

	<script>
		$(function() {
			// 폰트 리사이즈 쿠키있으면 실행
			font_resize("container", get_cookie("ck_font_resize_rmv_class"),
					get_cookie("ck_font_resize_add_class"));
		});
	</script>



	<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
	<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->


</body>
</html>
