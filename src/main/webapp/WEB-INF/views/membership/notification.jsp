<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script>
      var TEST_SERVER = false;
    </script>
  <title>아임웹 문의</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=no">
</head>
<body id="snowfall">
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
			</div>
		</div>
	</div>
	
	
	
	
	
<section class="col-gutter-30">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
                <div class="page-header support-header text-left support-header-list">
                    <h2 class="h3">
                        <a href="/customer">
                            무엇을 도와드릴까요?
                        </a>
                    </h2>
                    <div class="input-group input-group-search block-center">
						<span class="input-group-btn">
							<button class="btn btn-flat" type="button" onclick="javascript:CUSTOMER.portalSearch();" id="btn_portal_search"><i class="btm bt-search vertical-middle"></i></button>
						</span>
                        <input type="text" class="form-control search-control" placeholder="궁금한 점을 찾아보세요" id="txt_portal_search" value="" onkeyup="if(isEnter(event))$('#btn_portal_search').click();">
                    </div>
                </div>
                <div class="faq-wrap">
				    <h4 class="under-list text-bold">
                        <a href="/qna" class="active">자주묻는 질문</a>
                        <a href="/faq">가이드</a>
                    </h4>
						<div class="row">
							<div
								class="col-md-12 margin-bottom-lg nav-filter-wrap mobile-box sticky">
								<ul class="nav nav-filter _nav_filter">
									<li><a class="btn btn-default text-14 _all active" href="/qna">질문 TOP</a></li>
									<li><a class="btn btn-default text-14 _all " href="/qna?category=100">도메인/SSL</a></li>
								</ul>

							</div>
						</div>
						<div class="list-faq list-faq-notice">
							<ul>
								<li class="notice"><a
									href="/notice?view&page=0&985&back_url=L3FuYQ=="><span
										class="type"><span class="badge badge-progress">TOP</span></span>
										[안내] 결제 순서를 정확히 알고 싶습니다.</a></li>
								<li class="notice"><a
									href="/notice?view&page=0&984&back_url=L3FuYQ=="><span
										class="type"><span class="badge badge-progress">TOP</span></span>
										[안내] 회원가입은 어떻게 진행하나요?</a></li>
							</ul>
						</div>
                    <div class="list-faq">
							<ul>
								<li><a href="#"><span class="type"><span
											class="question">Q</span></span> 동아리 가입 정확한 순서를 알고싶어요</a></li>
								<li><a href="#"><span class="type"><span
											class="question">Q</span></span> 메일 또는 SMS/알림톡으로 알림을 받을 수 있나요?</a></li>
								<li><a href="#"><span class="type"><span
											class="question">Q</span></span> 내 정보 수정은 어떻게 하나요?</a></li>
								<li><a href="#"><span class="type"><span
											class="question">Q</span></span> 동아리를 탈퇴하고 싶은데 어떻게 하나요?</a></li>
								<li><a href="#"><span class="type"><span
											class="question">Q</span></span> 결제는 어떻게 하나요?</a></li>
								<li><a href="#"><span class="type"><span
											class="question">Q</span></span> 웹이랑 앱을 연동하고 싶은데 가능한가요</a></li>
							</ul>
						</div>
                    <div class="list-faq-footer">
                        <a href="/qna?mode=write" class="btn btn-primary btn-sm">문의하기</a>
                                                <a href="/qna?mode=my" class="btn btn-default btn-sm">나의 문의내역</a>
                                            </div>
                </div>
			</div>
		</div>
	</div>
</section>

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
<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bootstrap.css?1630317764"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/owl.carousel.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/swiper.min.css?1652070481"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/black-tie.css?1608189400"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/fonts/im-icon/style.css?1698285965"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/fonts/pretendard/web/variable/pretendardvariable.css?1669875619"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/fonts/pretendard/web/static/pretendard.css?1669875619"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/fonts/froala-emoji-tap/style.css?1669163161"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/codemirror.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/simple-line-icons.css?1608179394"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/lightgallery.css?1698001225"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/nexongothic.css?1604904459"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/nanumSquare.css?1639644764"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bm_dohyeon.css?1682980342"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/campton.css?1638947354"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/font-awesome.min.css?1626931454"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/material-design-iconic-font.css?1626931454"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/chosen.css?1617331870"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/animate.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/ii.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/im_component.css?1698001225"/><script  src="https://vendor-cdn.imweb.me/js/jquery.js?1627517460"></script><script  src="https://vendor-cdn.imweb.me/js/jquery-ui.js?1627517457"></script><script  src="https://vendor-cdn.imweb.me/js/bootstrap.min.js?1630317768"></script><script  src="https://vendor-cdn.imweb.me/js/lodash.min.js?1656295899"></script><script  src="https://vendor-cdn.imweb.me/js/owl.carousel.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/swiper-bundle.min.js?1669875597"></script><script  src="https://vendor-cdn.imweb.me/js/masonry.pkgd.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/codemirror.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/im_component.js?1636940317"></script><script  src="https://vendor-cdn.imweb.me/js/main_common.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.fileupload.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.chosen.js?1619084781"></script><script  src="https://vendor-cdn.imweb.me/js/imagesloaded.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/lightgallery-all.min.js?1596595980"></script><script  src="https://vendor-cdn.imweb.me/js/nprogress.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/ThreeCanvas.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery-scrolltofixed-min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/isotope.pkgd.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.lazyload.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/snow.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/dist/fe-common.min.js?1695343433"></script><script  src="https://vendor-cdn.imweb.me/js/axios.min.js?1689048978"></script><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_editor.css?1669163161"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_style.css?1607673118"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_editor.pkgd.css?1669163161"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_editor.min.css?1669163161"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_style.min.css?1669163161"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/char_counter.min.css?1607673118"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/code_view.min.css?1607673118"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/colors.min.css?1607673118"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/draggable.min.css?1607673118"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/emoticons.min.css?1669163161"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/file.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/fullscreen.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/image_manager.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/image.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/line_breaker.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/quick_insert.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/table.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/plugins/video.min.css?1607673119"/><script  src="https://vendor-cdn.imweb.me/froala_311/js/froala_editor.min.js?1608673099"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/font_size.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/colors.min.js?1607673167"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/align.min.js?1607673165"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/paragraph_format.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/table.min.js?1607673177"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/char_counter.min.js?1607673165"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/code_beautifier.min.js?1607673167"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/code_view.min.js?1608643124"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/draggable.min.js?1607673168"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/emoticons.min.js?1669163161"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/entities.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/file.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/font_family.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/forms.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/fullscreen.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/image.min.js?1607673172"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/image_manager.min.js?1607673172"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/inline_style.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/line_breaker.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/line_height.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/link.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/lists.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/paragraph_style.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/quote.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/save.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/url.min.js?1607673177"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/video.min.js?1625125569"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/third_party/font_awesome.min.js?1607673192"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/ko.js?1669875597"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/ja.js?1669875597"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/zh_cn.js?1669875597"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/zh_tw.js?1669875597"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/es.js?1669875597"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/vi.js?1669875597"></script><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/froala/custom-theme-v3.css?1691644561"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/font-awesome5.min.css?1669163183"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/main/main.css?1698001225"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/main/price.css?1698001225"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/main/style.css?1698298710"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/main/style_kokr.css?1578006662"/><script  src="https://vendor-cdn.imweb.me/js/froala_with_emoticon.js?1669875619"></script><script  src="https://vendor-cdn.imweb.me/js/common.js?1698298710"></script><script  src="https://vendor-cdn.imweb.me/js/clarity_script.js?1695010435"></script><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/tailwind.css?1698001225"/><script  src="/js/global.js?1698298710"></script><script  src="/js/my.js?1693895211"></script><script  src="/js/support.js?1695705540"></script><script  src="/js/service.js?1698298710"></script><script  src="/js/member_inactive.js?1671654693"></script><script  src="/js/event.js?1666824024"></script><script  src="/js/appstore.js?1666824024"></script><script  src="/js/auth_service.js?1689021233"></script><script  src="/js/education.js?1669067469"></script><script  src="/js/photographic_counsel.js?1666824024"></script><script  src="/js/make_logo.js?1666824024"></script><script  src="/js/theme.js?1666824024"></script><script  src="/js/mobile_slide_navigation.js?1698298710"></script><script  src="/js/trace/ga4.js?1666824024"></script><script  src="/js/mixpanel.js?1697010628"></script>	<link rel="shortcut icon" href="https://vendor-cdn.imweb.me/images/main/imweb-2309-favicon-32x32.ico?v1">
<link rel="stylesheet"
	href="http://smy.kr/js/font-awesome/css/font-awesome.min.css?ver=220620">
<link rel="stylesheet"
	href="http://smy.kr/theme/theme_wide_17/skin/latest/basic_main_one/style.css?ver=220620">
<link
	href="//fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800|Noto+Sans+KR:100,300,400,500,700,900|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i|Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//fonts.googleapis.com/icon?family=Material+Icons">
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
</html>