package com.korea.travel.activities;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ActivitiesController {
	
	// 1. 여행지티켓 메인 뷰
	@RequestMapping("/activities")
	public ModelAndView mainView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_main");
		return mv; 
	}
	
	// 2. 충청도 뷰
	@RequestMapping("/activities/ccdo")
	public ModelAndView ccdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_ccdo");
		return mv; 
	}
	
	// 3. 경기도 뷰
	@RequestMapping("/activities/ggdo")
	public ModelAndView ggdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_ggdo");
		return mv; 
	}
	
	// 4. 경상도 뷰
	@RequestMapping("/activities/gsdo")
	public ModelAndView gsdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_gsdo");
		return mv; 
	}
	// 5. 강원도 뷰
	@RequestMapping("/activities/gwdo")
	public ModelAndView gwdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_gwdo");
		return mv; 
	}
	
	// 6. 제주도 뷰
	@RequestMapping("/activities/jjdo")
	public ModelAndView jjdoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_jjdo");
		return mv; 
	}
	
	// 7.  전라도
	@RequestMapping("/activities/jldo")
	public ModelAndView jldoView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_jldo");
		return mv; 
	}
	

}
