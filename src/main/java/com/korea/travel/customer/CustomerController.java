package com.korea.travel.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerController {

	// 1. 자주묻는질문 뷰
	@RequestMapping("/faq")
	public ModelAndView faqView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("customer/faq");
		return mv; 
	}
	// 2. 후기 뷰
	@RequestMapping("/review")
	public ModelAndView reviewView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("customer/review");
		return mv; 
	}
	// 3. 공지사항 뷰
	@RequestMapping("/announcement")
	public ModelAndView announcementView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("customer/announcement");
		return mv; 
	}
	
}
