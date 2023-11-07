<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="module" src=../js/reviewview.js></script>
<link href="../js/main.css" rel="stylesheet" type="text/css">
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
	<div class="container text-center">
		<div class="center-heading en1">
			<br> <br> <br> <br> <br> <br> <br>
			<h2>후기/리뷰</h2>
			<span class="center-line"></span>
		</div>

		<div class="col-md-12">
			<div style="text-align: center;">
				<div class="table-responsive">
					<table class="table table-bordered table-striped"
						style="width: 100%;">
						<tr>
							<th style="width: 5%;">번호</th>
							<th style="width: 10%;">지역</th>
							<th style="width: 10%;">관심분야</th>
							<th style="width: 15%;">작성자</th>
							<th style="width: 10%;">제목</th>
							<th style="width: 10%;">내용</th>
							<th style="width: 5%;">작성일</th>
							<th style="width: 5%;"></th>
							<th style="width: 5%;">좋아요</th>
							<th style="width: 5%;">조회수</th>
							<th style="width: 5%;"></th>
							<th style="width: 5%;"></th>
						</tr>
						<tbody id="table-body2"></tbody>
						<!-- 여기에 댓글 목록이 표시됩니다. -->
					</table>
					<div>
						<table class="table table-bordered table-striped"
							style="width: 50%;">
							<tr>
								<th style="width: 10%;">아이디</th>
								<th style="width: 35%;">내용</th>
								<th style="width: 15%;">날짜</th>
								<th style="width: 5%;"></th>
							</tr>
							<tbody id="comments-table">
								<!-- 여기에 댓글 목록이 표시됩니다. -->
							</tbody>
						</table>
						<input type="text" id="commentInput" placeholder="댓글을 입력하세요">
						<button id="addCommentBtn">댓글 추가</button>
					</div>

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
</body>
</html>