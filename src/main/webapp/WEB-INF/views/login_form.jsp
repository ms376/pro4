<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="">
<head>
<script type="module" src="../js/register.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="ch-btn" style="display: none;">
		<a href="javascript:;"></a>
	</div>
	<div id="loader" class="se-pre-con style-gray" style="display: none;">
		<div class="page-loader-spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<div class="headline-overlay"></div>
	<section class="section-login">
		<div class="container">
			<div class="login-wrap">
				<header class="margin-bottom-xxxxxl">
					<h3 class="margin-bottom-xxl text-center">로그인</h3>
				</header>
				<c:url value="j_spring_security_check" var="loginUrl" />
				<form action="${loginUrl}" method="post">
					<div class="login">
						<div class="input-group input-group-login">
							<div class="input-group input-group-login">
								<input type="text" class="form-control" placeholder="아이디"
									name="idI" id="idInput"> <input type="password"
									class="form-control" placeholder="비밀번호" name="passwordI"
									id="passwordInput">
							</div>
						</div>
						<div class="form-group margin-bottom-xxxl">
							<button class="btn btn-primary btn-block" id="login"
								type="submit">로그인</button>
							<br>
							<div class="checkbox checkbox-styled"></div>
						</div>
				</form>
				<div class="form-group">
					<p class="text-center">
						회원가입 <a href="/a" class="text-primary">가입</a>
					</p>
					<div class="form-group">
						<a href="#" class="btn btn-naver btn-block"><i
							class="fab fab-naver-alt"></i> 로그인</a>
					</div>
					<div class="form-group">
						<a href="#" class="btn btn-facebook btn-block"><i
							class="ii ii-facebook-sq"></i> FaceBook 로그인</a>
					</div>
					<div class="form-group">
						<a href="#" class="btn btn-google btn-block"> Google 로그인</a>
					</div>
					<p class="text-center">
						<a href="/findpro" class="text-default">비밀번호를 잊으셨나요?</a>
					</p>
				</div>
			</div>
		</div>
		</div>
	</section>
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/bootstrap.css?1630317764" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/owl.carousel.css?1577682282" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/swiper.min.css?1652070481" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/black-tie.css?1608189400" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/codemirror.css?1577682282" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/simple-line-icons.css?1608179394" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/lightgallery.css?1577682282" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/nexongothic.css?1604904459" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/nanumSquare.css?1639644764" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/bm_dohyeon.css?1682980342" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/campton.css?1638947354" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/font-awesome.min.css?1626931454" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/material-design-iconic-font.css?1626931454" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/chosen.css?1617331870" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/ii.css?1577682282" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/im_component.css?1636689958" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/froala/custom-theme-v3.css?1691644561" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/main/main.css?1694668630" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/main/price.css?1686791343" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/main/style.css?1697607019" />
	<link rel="stylesheet" type="text/css"
		href="https://vendor-cdn.imweb.me/css/main/style_kokr.css?1578006662" />
	<style>
.async-hide {
	opacity: 0 !important
}
</style>
</body>
</html>