<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>프로젝트3</title>
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
         </div>
      </div>
   </div>
   <nav
      class="navbar fixed-top navbar-expand-lg navbar-white bg-white fixed-top">
      <div class="container">
      
         <a href="http://localhost:8081/" class="navbar-brand" class="logo"><img
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
                     <a class="dropdown-item ks4 fw4" href="#" target="_self"> 소개</a>
                     <a class="dropdown-item ks4 fw4" href="#" target="_self">찾아오시는   길</a>
                     <a class="dropdown-item ks4 fw4" href="#" target="_self">공지사항</a>
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
                  <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
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
                     <a class="dropdown-item" href="#">새글</a>
                     <a class="dropdown-item" href="#">1:1문의</a>
                     <a href="../login/loginform.jsp" class="dropdown-item" href="#">로그인</a>
                     <a class="../signup/signupform.jsp" class= "dropdown-item" href="#">회원가입</a>
                  </div></li>
            </ul>
         </div>
      </div>
   </nav>
         <div class="container margin-top-50">
      
      <div class="center-heading en1">
         <h2>동취미 소개</h2>
         <span class="center-line"></span>
      </div>

      <img src="img/mma.png" class="img-fluid">
      <ul class="list-unstyled margin-top-50">

        <li class="media">
         <div class="media-body">
           <h5 class="mt-0 mb-1"><b>운영방침</b><br><br> 누구나 함께할 수 있는 곳!<br></h5>
           <p class="ks3">
            "우리 동네, 우리 동아리! 이곳은 당신이 속한 동네에서 시작되는 특별한 모험이에요.
         <br>여기서는 당신이 편안하게 살아가는 지역에서 다양한 동아리를 만나고 경험할 수 있어요.
         <br>매일이 새로운 모험이 되고, 우리 동네의 다양한 커뮤니티에 참여하며 더 풍요로운 삶을 만들어보세요.
         <br>우리 동아리의 문을 열고, 함께 즐거운 순간들을 만들어가요. 여기서 우리의 이야기가 시작됩니다!"<br><br><br>

         <br><h5 class="mt-0 mb-2"><b>1. 목표설정</b><br><br> 동아리가 달성하고자 하는 큰 그림을 명확하게 그려봐요. 간결하게 정의된 목표는<br> 모두가 함께 노력하는 방향을 제시해줄 거에요.<br></h5>
          <br><h5 class="mt-0 mb-2"><b>2. 존중과소통</b><br><br> 우리는 서로를 존중하고 소통하는 것이 중요해요. 개인적인 견해에 리스펙트를 가지며<br> 소통을 통해 오해나 갈등을 방지해봐요.<br></h5>
          <br><h5 class="mt-0 mb-2"><b>3. 다양한 활동</b><br><br> 다양한 활동을 통해 동아리 멤버들의 관심사와 역량을 알아봐요.<br> 이를 통해 서로에게 새로운 경험을 선사하고, 동아리 내에서의 유대감을 강화시켜봐요<br></h5>
          <br><h5 class="mt-0 mb-2"><b>4. 능동적 참여</b><br><br> 모든 벰버는 동아리의 주역이에요. 누구나 능동적으로 참여하고 자신의 의견을 내어봐요<br> 함께 만들어가는 과정에서 뜻깊은 경험을 얻을 수 있을 거에요<br></h5>
          <br><h5 class="mt-0 mb-2"><b>5. 문제해결과 융통성</b><br><br> 문제는 피할 수 없지만, 우리는 그 문제를 해결하는 데에 서로에게 의지할 수 있어요.<br> 상황에 따라 융통성을 가지며, 해결책을 찾아나가보아요.<br></h5>
          <br><h5 class="mt-0 mb-2"><b>6. 정기적인 회의</b><br><br> 정기 회의를 통해 동아리의 운영 상황을 함께 고민하고, 멤버들의 의견을 적극적으로 수렴해보아요.<br>함께 만들어가는 동아리의 주체가 되어봅시다<br></h5>
          

           <br><h5 class="mt-0 mb-1"><b> </b></h5>
         </div>
        </li>
      </ul>
   </div>


    

   
   <div class="row padding-top-20">
   </div>
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
                  <i class="far fa-building"></i> 주소: 서울특별시 마포구 마포대로는 무너졌냐<br />

                  <i class="fas fa-phone"></i> 연락처 : 010-3865-4323 <br />

                  <i class="fas fa-fax"></i> 팩스번호 : 000-0000-0000<br />
               </p>
            </div>
         </div>
      </div>
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
</div>
<script>
$(function() {
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
});
</script>

</body>
</html>

