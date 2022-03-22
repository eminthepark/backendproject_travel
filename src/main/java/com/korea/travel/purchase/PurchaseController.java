package com.korea.travel.purchase;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PurchaseController {

	// 1. main페이지 view
	@RequestMapping("/purchase")
	public ModelAndView mainView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("purchase");
		return mv; 
		
		
	}
}
