package com.korea.travel.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	// 1. 로그인 뷰
	@RequestMapping("/login")
	public ModelAndView loginView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("member/login");
		return mv; 
	}
	// 2. 회원가입 뷰
	@RequestMapping("/signup")
	public ModelAndView signupView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("member/signup");
		return mv; 
	}
	// 1. 로그인 메인 뷰
	@RequestMapping("/mypage")
	public ModelAndView mypageView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("member/mypage");
		return mv; 
	}

	
}
