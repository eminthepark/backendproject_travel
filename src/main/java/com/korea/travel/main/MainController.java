package com.korea.travel.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController{

	// 1. main페이지 view
	@RequestMapping("/")
	public ModelAndView mainView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("main");
		return mv; 
		
		
	}

}
