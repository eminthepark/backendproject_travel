package com.korea.travel.accommodation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AccommodationController {

	// 1. 숙박 메인 뷰
	@RequestMapping("/accommodation")
	public ModelAndView mainView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("accommodation/accommodation_main");
		return mv; 
	}
	// 2. 충청도 뷰
	@RequestMapping("/accommodation/ccdo")
	public ModelAndView ccdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("accommodation/accommodation_ccdo");
		return mv; 
	}
	
	// 3. 경기도 뷰
	@RequestMapping("/accommodation/ggdo")
	public ModelAndView ggdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("accommodation/accommodation_ggdo");
		return mv; 
	}
	
	// 4. 경상도 뷰
	@RequestMapping("/accommodation/gsdo")
	public ModelAndView gsdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("accommodation/accommodation_gsdo");
		return mv; 
	}
	// 5. 강원도 뷰
	@RequestMapping("/accommodation/gwdo")
	public ModelAndView gwdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("accommodation/accommodation_gwdo");
		return mv; 
	}
	
	// 6. 제주도 뷰
	@RequestMapping("/accommodation/jjdo")
	public ModelAndView jjdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("accommodation/accommodation_jjdo");
		return mv; 
	}
	
	// 7.  전라도
	@RequestMapping("/accommodation/jldo")
	public ModelAndView jldoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("accommodation/accommodation_jldo");
		return mv; 
	}
		
		
}
