<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>마이 페이지</title>
<script type="module" src="../js/main.js"></script>
<link href="../js/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
</head>
<body>
	<div class="container mypage">
		<section class="style-cool-red">
			<div class="page-header">
				<h3>마이페이지</h3>
			</div>
			<div class="row flex-box">
				<div class="col-md-6 flex-item">
					<div class="card">
						<div class="card-head">
							<span>내 정보</span> <a class="text-13 text-blue right-link"
								href="/prf" role="button">정보수정</a>
						</div>
						<div class="card-body">
							<div class="table full-width margin-bottom-xxxxl">
								<div class="table-cell vertical-middle">
									<div class="holder mypage-image">
										<img class="radius-50" src="img/a2.jpg" width="90" height="90">
									</div>
								</div>
								<div class="table-cell vertical-middle">
									<div class="mypage-name">동취미</div>
									<div class="mypage-uid text-gray">dong1111@gmail.com</div>
								</div>
							</div>
							<div class="info">
								<ul class="big-profile-info-list text-left">
									<li><a href="javascript:;"> <i
											class="icon icon-globe"></i> <span>홈페이지 미입력</span>
									</a></li>
									<li><a href="mailto:1234@456789.com"> <i
											class="icon icon-envelope"></i> <span>dong1111@gmail.com</span>
									</a></li>
									<li><a href="javascript:;"> <i class="icon icon-phone"></i>
											<span>01012345678</span> <span> </span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 flex-item">
					<div class="card">
						<div class="card-head">
							<span>찜 목록</span>
						</div>
						<div class="card-body no-padding">
							<div class="text-16 text-center empty-area"
								style="padding: 40px 0;">
								<div class="txt no-margin">찜한 목록이 없습니다.</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="row flex-box">

				<div class="col-md-6 flex-item">
					<div class="card">
						<div class="card-head">
							<span>문의내역</span> <a class="text-13 text-blue right-link"
								href="/ques" role="button">문의사항</a>
						</div>
						<div class="card-body">
							<div class="text-16 text-center empty-area">
								<div class="txt">문의 내역이 없습니다.</div>
								<div>
									<a href="#" class="btn btn-primary width-4" role="button">문의하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 flex-item">
					<div class="card">
						<div class="card-head">
							<span>My 동아리</span> <a class="text-13 text-gray right-link"
								href="/payment_method" role="button">더보기</a>
						</div>
						<div class="card-body">
							<div class="text-16 text-center empty-area">
								<div class="txt">등록된 동아리가 없습니다.</div>
							</div>
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