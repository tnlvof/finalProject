package com.kh.fooding.review.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.review.model.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService rs;
	
	@RequestMapping(value ="deleteReview.re", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public ModelAndView deleteReview(HttpServletRequest request, ModelAndView mv) {
		int rid = Integer.parseInt(request.getParameter("rid"));
		System.out.println("Controller rid : " + rid);
		
		int deleteReview = rs.deleteReview(rid);
		
		mv.addObject("deleteReview", deleteReview);
		mv.setViewName("redirect:/goMyPageReview.me");
		
		return mv; 
		
	}
}
