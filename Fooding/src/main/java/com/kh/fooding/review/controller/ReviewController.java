package com.kh.fooding.review.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.review.model.service.ReviewService;
import com.kh.fooding.review.model.vo.Review;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService rs;
	
	@RequestMapping(value ="deleteReview.re")
	public ModelAndView deleteReview(HttpServletRequest request, ModelAndView mv) {
		int rid = Integer.parseInt(request.getParameter("reviewId"));
		System.out.println("Controller rid : " + rid);
		
		int deleteReview = rs.deleteReview(rid);
		
		mv.addObject("deleteReview", deleteReview);
		mv.setViewName("redirect:/goMyPageReview.me");
		
		return mv; 
		
	}
	
	@ResponseBody
	@RequestMapping(value = "insertReview.re")
	public ModelAndView insertReview(ModelAndView mv, Review r ,
		   @RequestParam(name="Photo", required=false)MultipartFile photo,
		   HttpServletRequest request ,HttpSession session) {
		
		int sid = Integer.parseInt(request.getParameter("storeId"));
		
		Member m = (Member) session.getAttribute("loginUser");
		
		System.out.println("controller Member : m " + m);
		System.out.println("controller Review : " + r);
		System.out.println("controller photo : " + photo.getOriginalFilename());
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\reviewFiles";
		
		r.setMainPhoto(photo.getOriginalFilename());
		r.setMid(m.getMid());
		r.setSid(sid);
		
		rs.insertReview(r);
		
		try {	
			photo.transferTo(new File(filePath + "\\" + photo.getOriginalFilename()));
		} catch (IllegalStateException | IOException e1) {
			e1.printStackTrace();
		}
		
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "selectReview.re")
	public ModelAndView selectReview(ModelAndView mv, HttpServletRequest request) {
		int sid = Integer.parseInt(request.getParameter("sid"));
		
		System.out.println("review sid : " + sid);
		
		ArrayList<Review> rList = rs.selectReview(sid);
		
		mv.addObject("rList",rList);
		mv.setViewName("jsonView");
		return mv;
	}
}
