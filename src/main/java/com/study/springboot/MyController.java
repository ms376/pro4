package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	// 메인
	@RequestMapping("/")
	public String root() throws Exception {
		return "main";
	}
	// 메인 -소개
	@RequestMapping("/inte")
	public String logirm() {

		return "membership/introduce";
	}

// ---------------------회원관리-------------------------
	// 회원가입
	@RequestMapping("/register")
	public String signup() {

		return "signupform";
	}

	// 로그인
	@RequestMapping("/login")
	public String LoginForm() {

		return "login_form";
	}

	// 로그인 -에러
	@RequestMapping("/fail")
	public String Loginfail() {

		return "login_fail";
	}

	// 로그인 -가입정보찾기
	@RequestMapping("/findpro")
	public String Loginfindpro() {

		return "login_findpro";
	}

// ---------------------내정보수정-------------------------
	// 내정보 -간단히보기
	@RequestMapping("/mypage")
	public String Mypage() {

		return "membership/mypage";
	}

	// 내정보 -자세히보기
	@RequestMapping("/prf")
	public String Profile() {

		return "membership/profile";
	}

	// 내정보 -수정하기
	@RequestMapping("/profileC")
	public String ProfileEdit() {

		return "membership/profile2";
	}

// ---------------------관리자페이지-------------------------
	// 관리자3 -글삭제
	@RequestMapping("/ad3")
	public String ad3() {

		return "admin/adpage3";
	}

	// 관리자2 -정보출력
	@RequestMapping("/ad2")
	public String ad2() {

		return "admin/adpage2";
	}

	// 관리자1 -회원정보조회
	@RequestMapping("/ad1")
	public String ad1() {

		return "admin/adpage1";
	}

// ---------------------동아리게시판-------------------------
	// 동아리
	@RequestMapping("/dongboard")
	public String dongboard() {

		return "board/dong/dongboard";
	}

	// 동아리B -글쓰기
	@RequestMapping("/dongwriteform")
	public String dongwrite() {

		return "board/dong/dongwrite";
	}

	// 동아리B -글보기
	@RequestMapping("/dongviewboard")
	public String dongview() {

		return "board/dong/dongviewboard";
	}

	// 동아리B -글수정
	@RequestMapping("/dongeditboard")
	public String dongedit() {

		return "board/dong/dongeditboard";
	}

// ---------------------공지사항-------------------------
	// 공지사항B
	@RequestMapping("/noticeboard")
	public String noticeboard() {

		return "board/notice/noticeboard";
	}

	// 공지사항B -글보기
	@RequestMapping("/noticeviewboard")
	public String noticeview() {

		return "board/notice/noticeviewboard";
	}

	// 공지사항B -글수정
	@RequestMapping("/noticeeditboard")
	public String noticeedit() {

		return "board/notice/noticeeditboard";
	}

	// 공지사항B -글쓰기
	@RequestMapping("/noticewrite")
	public String noticewrite() {

		return "board/notice/noticewrite";
	}

// ---------------------자유게시판-------------------------
	// 자유게시판B
	@RequestMapping("/freeboard")
	public String freeboard() {

		return "freeboard";
	}

	// 자유게시판B -글쓰기
	@RequestMapping("/freewriteform")
	public String freeWrite() {

		return "board/free/freeWrite";
	}

	// 자유게시판B -글보기
	@RequestMapping("/freeViewboard")
	public String freeViewboard() {

		return "board/free/freeViewboard";
	}

	// 자유게시판B -글수정
	@RequestMapping("/freeEditboard")
	public String freeEditboard() {

		return "board/free/freeEditboard";
	}

// ---------------------ㅁㅁㅁㅁ-------------------------
	// 리뷰
	@RequestMapping("/review")
	public String reviewboard() {

		return "board/review/reviewboard";
	}

	// 리뷰 쓰기
	@RequestMapping("/reviewwriteform")
	public String reviewwrite() {

		return "board/review/reviewwrite";
	}

	// 리뷰 보기
	@RequestMapping("/reviewviewboard")
	public String reviewview() {

		return "board/review/reviewviewboard";
	}

	// 리뷰 수정
	@RequestMapping("/revieweditboard")
	public String reviewedit() {

		return "board/review/revieweditboard";
	}
}
