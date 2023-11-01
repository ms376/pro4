<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>자유게시판</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="module" src=../js/list.js></script>
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/css/default.css?ver=220620">
<link rel="stylesheet"
	href="http://smy.kr/js/font-awesome/css/font-awesome.min.css?ver=220620">
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/skin/board/basic_div/style.css?ver=220620">

<!-- google fonts -->
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
</head>
<body>
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
			</div>
		</div>
	</div>
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-white bg-white fixed-top">
		<div class="container">
			<a href="../board/main.jsp" class="navbar-brand" href="로고"
				class="logo"><img src="img/dong1.png"></a>
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
							커뮤니티 </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a href="../board/freeboard.jsp" class="dropdown-item ks4 fw4" href="#" target="_self">잡담</a>
							<a href="../board/clubboard.jsp" class="dropdown-item ks4 fw4" href="#" target="_self">홍보</a>
							<a href="../board/reviewboard.jsp" class="dropdown-item ks4 fw4" href="#" target="_self">후기/리뷰</a>
						</ul></li>
					<li class="nav-item dropdown megamenu-li"><a
						class="nav-link dropdown-toggle ks4 f15" href="#"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" target="_self">
							Myclub </a> <!-- 서브 -->
						<ul class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item ks4 fw4" href="#" target="_self">찜한동아리</a>

							<a class="dropdown-item ks4 fw4" href="#" target="_self">내정보</a>

							<a class="dropdown-item ks4 fw4" href="#" target="_self">로그아웃</a>
						</ul></li>
					<li class="nav-item dropdown login"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							LOGIN </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">

							<a class="dropdown-item" href="#">새글</a> <a class="dropdown-item"
								href="#">1:1문의</a> <a href="../login/loginform.jsp"
								class="dropdown-item" href="#">로그인</a> <a
								class="../signup/signupform.jsp" class="dropdown-item" href="#">회원가입</a>
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

	<!-------------------------- 게시판 상단 배경 수정하는 곳 -------------------------->

	<!-------------------------- 상단배경 수정 -------------------------->
	<style>
	
/* mobile */
@media ( min-width : 1px) and (max-width: 1089px) {
	.about-bg {
		background-image: url('http://smy.kr/pages/img/jo03-2.jpg');
		width: 100%;
		-webkit-background-size: 100% auto;
		-moz-background-size: 100% auto;
		-o-background-size: 100% auto;
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		color: #fff;
		height: 100%;
		padding-top: 70px;
	}
	.ml-auto, .mx-auto {
		padding-top: 10px;
		padding-bottom: 10px
	}
	.lead {
		font-size: 12px;
		font-weight: 300
	}
	.display-4 {
		font-size: 1.5rem;
		font-weight: 300;
	}
}
/* desktop */
@media ( min-width : 1090px) {
	.about-bg {
		background-image: url('http://smy.kr/pages/img/jo03-2.jpg');
		background-position: center center;
		background-repeat: no-repeat;
		color: #fff;
		height: 300px
	}
	.lead {
		font-size: 1.25rem;
		font-weight: 300
	}
	.display-4 {
		font-size: 2.5rem;
		font-weight: 300;
		line-height: 1.2
	}
}
</style>
	<div class="col-md-5 p-lg-5 mx-auto my-5">
	<div class="ety-main"></div>
	<div class="center-heading en1">
			<h2>﻿﻿자유게시판</h2>
			<span class="center-line"></span>
		</div>
		<h1 class="display-4 font-weight-normal"></h1>
		<p class="lead font-weight-normal ko1"></p>
	</div>
	<div class="product-device shadow-sm d-none d-md-block"></div>
	<div
		class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
	</div>
	<!-------------------------- ./상단배경 수정 -------------------------->
	<!-------------------------- ./게시판 상단 배경 수정하는 곳 -------------------------->
	<p style="text-align: center;" align="center">
		<br />
	</p>
	<style>
@media only screen and (max-width: 320px) {
	.SF_board {
		overflow-x: auto;
		white-space: nowrap;
	}
}
@media only screen and (min-width: 321px) and (max-width: 768px) {
	.SF_board {
		overflow-x: auto;
		white-space: nowrap;
	}
}
/* 페이지 selec 박스 */
/* mobile */
@media ( min-width : 1px) and (max-width: 1089px) {
	.mb-5, .my-5 {
		margin-bottom: 0rem !important;
	}
	.select-menu {
		width: 190px;
		height: 58px;
		padding: 17px 70px 17px 5px;
		border-top: none;
		border-bottom: 1px solid #fff;
		border-left: 1px solid #e1e1e1;
		border-right: 1px solid #f2f2f2;
	}
	.home {
		display: inline;
		width: 140px;
		padding: 17px 45px 17px 15px;
		border-left: 1px solid #e1e1e1;
	}
	.menu {
		display: inline;
	}
}
/* desktop */
@media ( min-width : 1090px) {
	.select-menu {
		width: 190px;
		height: 58px;
		padding: 17px 70px 17px 5px;
		border-top: none;
		border-bottom: 1px solid #fff;
		border-left: 1px solid #e1e1e1;
		border-right: 1px solid #f2f2f2;
	}
	.home {
		display: inline;
		width: 140px;
		padding: 17px 45px 17px 15px;
		border-left: 1px solid #e1e1e1;
	}
	.menu {
		display: inline;
	}
}
</style>
 
 
    <table border="1">
        	<tr>
                <th>Num</th>
                <th>Id</th>
                <th>Title</th>
                <th>Content</th>
                <th>Date</th>
                <th>Count</th>
            </tr>     
        <tbody id="table-body"></tbody>
        </table>
        <button type="button" onclick="location.href='/writeform'">글작성</button>
        
        <!-- /container -->
	<br style="text-align: center; clear: both;" />
	<p style="text-align: center;" align="center"></p>

	<footer class="py-5 bg-dark">
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
			<!--/container-->
		</footer>
		<div class="container-fluid bg-gray">
		<div class="col-md-12 text-white text-center en1">
				Copyright 1988~2023 &copy; <a href="http://smy.kr" target="_blank"><span class="color-white ks4">소명유치원</span></a>
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
        
</body>
</html>