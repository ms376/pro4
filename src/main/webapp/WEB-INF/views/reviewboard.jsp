<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>프로젝트3</title>
<link href="../js/main.css" rel="stylesheet" type="text/css">
<script type="module" src="../js/main.js"></script>
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
</head>
<body>
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
	<div class="col-md-5 p-lg-5 mx-auto my-5">
	<div class="ety-main"></div>
	<div class="center-heading en1">
			<h2>﻿﻿리뷰/후기</h2>
			<span class="center-line"></span>
		</div>
		<h1 class="display-4 font-weight-normal"></h1>
		<p class="lead font-weight-normal ko1"></p>
	</div>
	<div class="product-device shadow-sm d-none d-md-block"></div>
	<div
		class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
	</div>
	<div class="container margin-top-60 margin-bottom-60">
		<div class="row" style="overflow: hidden;">
			<div class="col-sm-12">
				<div id="bo_list" class="ks4" style="width: 100%">
					<div id="bo_btn_top">
						<div id="bo_list_total">
							<span>Total 73건</span> 1 페이지
						</div>

					</div>
					<form name="fboardlist" id="fboardlist"
						action="./board_list_update.php"
						onsubmit="return fboardlist_submit(this);" method="post">
						<input type="hidden" name="bo_table" value="sm08_4"> <input
							type="hidden" name="sfl" value=""> <input type="hidden"
							name="stx" value=""> <input type="hidden" name="spt"
							value=""> <input type="hidden" name="sca" value="">
						<input type="hidden" name="sst" value="wr_num, wr_reply">
						<input type="hidden" name="sod" value=""> <input
							type="hidden" name="page" value="1"> <input type="hidden"
							name="sw" value="">
						<!-- 타이틀 -->
						<div class="clearfix">

							<div class="e_num_ti">번호</div>
							<div class="e_subject_ti">제목</div>
							<div class="e_writer_ti">글쓴이</div>
							<div class="e_hit_ti">
								<a
								href="#">조회
									<i class="fa fa-sort" aria-hidden="true"></i>
							</div>
							<div class="e_date_ti">
								<a
									href="#">날짜
									<i class="fa fa-sort" aria-hidden="true"></i>
								</a>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->

								<strong class="notice_icon"><i
									class="fa fa-exclamation-triangle" aria-hidden="true"></i><span
									class="sound_only">공지</span></strong>
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/5%EC%9B%94-13%EC%9D%BC-%ED%95%99%EB%B6%80%EB%AA%A8-%EA%B3%B5%EA%B0%9C-%EC%88%98%EC%97%85-%EC%95%88%EB%82%B4/">
									동아리 가입시 주의사항</a>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자1</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 69
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 05-12
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">
							<div class="e_num">
								<!-- num -->

								<strong class="notice_icon"><i
									class="fa fa-exclamation-triangle" aria-hidden="true"></i><span
									class="sound_only">공지</span></strong>
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/2023%ED%95%99%EB%85%84%EB%8F%84-%EC%86%8C%EB%AA%85%EC%9C%A0%EC%B9%98%EC%9B%90-%ED%95%99%EC%82%AC-%EC%9D%BC%EC%A0%95/">
									2023년 동취미 안내문 </a> <i class="fa fa-heart" aria-hidden="true"></i>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자1</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 241
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 03-10
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								1
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="#">
									게시판1 ♥ </a>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자2</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 98
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 10-13
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">
							<div class="e_num">
								<!-- num -->
								2
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/10%EC%9B%94-2%EC%A3%BC-%EA%B0%80%EC%A0%95%ED%86%B5%EC%8B%A0%EB%AC%B8-%ED%86%A0%EB%A1%A0-%EC%88%98%EC%97%85-%EC%95%88%EB%82%B4%EB%AC%B8/">
									게시판2</a> <i class="fa fa-heart"
									aria-hidden="true"></i>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자3</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 105
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 10-06
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								3
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/10%EC%9B%94-%ED%96%89%EC%82%AC-%EB%B0%8F-%EC%B2%B4%ED%97%98-%EC%82%AC%EB%9E%91%EB%B0%98/">
									게시판3</a>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자4</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 69
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-27
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								4
							</div>
							<div class="e_subject" style="padding-left: 0px">

								<a
									href="http://smy.kr/sm08_4/10%EC%9B%94-%ED%96%89%EC%82%AC-%EB%B0%8F-%EC%B2%B4%ED%97%98-%ED%95%B4%EC%98%A4%EB%A6%84%EB%B0%98/">
									게시판4 </a>

							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자5</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 56
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-27
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								5
							</div>
							<div class="e_subject" style="padding-left: 0px">

								<a
									href="http://smy.kr/sm08_4/10%EC%9B%94-%ED%96%89%EC%82%AC-%EB%B0%8F-%EC%B2%B4%ED%97%98-%EB%B3%84%EC%B4%88%EB%A1%B1%EB%B0%98/">
									게시판5 </a>

							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자6</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 38
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-27
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->

								6
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/10%EC%9B%94-%ED%96%89%EC%82%AC-%EB%B0%8F-%EC%B2%B4%ED%97%98-%ED%9D%B0%EA%B5%AC%EB%A6%84%EB%B0%98/">
									게시판6 </a>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자7</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 30
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-27
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								7
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/10%EC%9B%94-%ED%96%89%EC%82%AC-%EB%B0%8F-%EC%B2%B4%ED%97%98-%EB%A7%91%EC%9D%80%EC%83%98%EB%B0%98/">
									게시판7 </a>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자8</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 38
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-27
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								8
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/9%EC%9B%94-4%EC%A3%BC-10%EC%9B%94-1%EC%A3%BC-%EA%B0%80%EC%A0%95%ED%86%B5%EC%8B%A0%EB%AC%B8-%ED%86%A0%EB%A1%A0-%EC%88%98%EC%97%85/">
									게시판8 </a> <i class="fa fa-heart"
									aria-hidden="true"></i>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자9</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 175
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-22
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								9
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/9%EC%9B%94-3%EC%A3%BC-%EA%B0%80%EC%A0%95%ED%86%B5%EC%8B%A0%EB%AC%B8-%ED%86%A0%EB%A1%A0-%EC%88%98%EC%97%85-%EC%95%88%EB%82%B4%EB%AC%B8/">
									게시판9 </a> <i class="fa fa-heart"
									aria-hidden="true"></i>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자10</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 145
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-15
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								10
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/9%EC%9B%94-2%EC%A3%BC-%EA%B0%80%EC%A0%95%ED%86%B5%EC%8B%A0%EB%AC%B8-%ED%86%A0%EB%A1%A0-%EC%88%98%EC%97%85-%EC%95%88%EB%82%B4%EB%AC%B8/">
									게시판10 </a> <i class="fa fa-heart"
									aria-hidden="true"></i>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자11</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 177
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-08
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								11
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/9%EC%9B%94-1%EC%A3%BC-%EA%B0%80%EC%A0%95%ED%86%B5%EC%8B%A0%EB%AC%B8-%ED%86%A0%EB%A1%A0-%EC%88%98%EC%97%85-%EC%95%88%EB%82%B4%EB%AC%B8/">
									게시판11 </a> <i class="fa fa-heart"
									aria-hidden="true"></i>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자12</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 178
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-01
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								12
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/9%EC%9B%94-%ED%96%89%EC%82%AC-%EB%B0%8F-%EC%B2%B4%ED%97%98-%EC%82%AC%EB%9E%91%EB%B0%98/">
									게시판12 </a>

							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자13</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 43
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-01
								</div>
							</div>
						</div>
						<!-- 게시물 -->
						<div class="clearfix pr bl">

							<div class="e_num">
								<!-- num -->
								12
							</div>
							<div class="e_subject" style="padding-left: 0px">
								<a
									href="http://smy.kr/sm08_4/9%EC%9B%94-%ED%96%89%EC%82%AC-%EB%B0%8F-%EC%B2%B4%ED%97%98-%ED%95%B4%EC%98%A4%EB%A6%84%EB%B0%98/">
									게시판13 </a>
							</div>
							<div class="m_view">
								<div class="e_writer">
									<i class="fa fa-user-o" aria-hidden="true"></i> <span
										class="sv_member">관리자14</span>
								</div>
								<div class="e_hit">
									<i class="fa fa-eye" aria-hidden="true"></i> 41
								</div>
								<div class="e_date">
									<i class="fa fa-clock-o" aria-hidden="true"></i> 09-01
								</div>
							</div>
						</div>
						<div class="mb50"></div>
					</form>
					<fieldset id="bo_sch">
						<form name="fsearch" method="get">
							<input type="hidden" name="bo_table" value="sm08_4"> <input
								type="hidden" name="sca" value=""> <input type="hidden"
								name="sop" value="and"> <label for="sfl"
								class="sound_only">검색대상</label> <select name="sfl" id="sfl">
								<option value="wr_subject">제목</option>
								<option value="wr_content">내용</option>
								<option value="wr_subject||wr_content">제목+내용</option>
								<option value="mb_id,1">회원아이디</option>
								<option value="mb_id,0">회원아이디(코)</option>
								<option value="wr_name,1">글쓴이</option>
								<option value="wr_name,0">글쓴이(코)</option>
							</select> <label for="stx" class="sound_only">검색어<strong
								class="sound_only"> 필수</strong></label> <input type="text" name="stx"
								value="" required id="stx" class="sch_input" size="25"
								maxlength="20" placeholder="검색어를 입력해주세요">
							<button type="submit" value="검색" class="sch_btn">
								<i class="fa fa-search" aria-hidden="true"></i><span
									class="sound_only">검색</span>
							</button>
						</form>
					</fieldset>
					<!-- } 게시판 검색 끝 -->
				</div>
				<!-- 페이지 -->
				<nav class="pg_wrap">
					<span class="pg"><span class="sound_only">열린</span><strong
						class="pg_current">1</strong><span class="sound_only">페이지</span> <a
						href="#" class="pg_page">2<span class="sound_only">페이지</span></a>
						<a href="#" class="pg_page">3<span class="sound_only">페이지</span></a>
						<a href="#" class="pg_page">4<span class="sound_only">페이지</span></a>
						<a href="#" class="pg_page">5<span class="sound_only">페이지</span></a>
						<a href="#" class="pg_page pg_end">맨끝</a> </span>
				</nav>
			</div>
		</div>
	</div>
	<br style="text-align: center; clear: both;" />
	<p style="text-align: center;" align="center"></p>

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