package com.korea.travel.allinoneevent;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AllinoneeventController {
	
	// 1. 올인원이벤트 메인 뷰
	@RequestMapping("/allinoneevent")
	public ModelAndView mainView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("allinoneevent/allinoneevent");
		return mv; 
	}
	
	
	

}
