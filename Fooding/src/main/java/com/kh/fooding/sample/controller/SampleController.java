package com.kh.fooding.sample.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.sample.model.service.SampleService;
import com.kh.fooding.sample.model.vo.Sample;

@Controller
public class SampleController {
	@Autowired
	private SampleService sps;
	
	//사업자등록번호 조회
	@RequestMapping("bizNo.sp")
	public ModelAndView bizNoCheck(ModelAndView mv, String bizNo) {
		System.out.println("샘플 컨트롤러");
		
		Sample s = sps.searchSample(bizNo);
		
		mv.addObject(s);
		
		mv.setViewName("jsonView");
		
		
		//setViewName: jsonView, 패키지명/.jsp빼고 페이지이름
		
		return mv;
	}
}
