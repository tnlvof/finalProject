package com.kh.fooding.reservation.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.service.ReservationService;
import com.kh.fooding.reservation.model.vo.Reservation;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService rs;

	@RequestMapping(value ="cancelReserv.rv")
	public ModelAndView cancelReserv(HttpServletRequest request, ModelAndView mv) {
		int rvid = Integer.parseInt(request.getParameter("reservId"));
		System.out.println("Controller rvid : " + rvid);
		
		int cancelReserv = rs.cancelReservation(rvid);
		
		mv.addObject("cancelReserv", cancelReserv);
		mv.setViewName("redirect:/goMyPage.me");
		
		return mv; 
		
	}
	
	@RequestMapping(value ="confirmReserv.rv")
	public ModelAndView confirmReserv(HttpServletRequest request, ModelAndView mv) {
		int rvid = Integer.parseInt(request.getParameter("reservId"));
		System.out.println("Controller rvid : " + rvid);
		
		int confirmReserv = rs.confirmReservation(rvid);
		
		mv.addObject("confirmReserv", confirmReserv);
		mv.setViewName("redirect:/goMyPage.me");
		
		return mv; 
		
	}
	
	@RequestMapping(value="beforeReserv.rv")
	public ModelAndView beforeReservList(HttpSession session, ModelAndView mv) {
 		Member m = (Member) session.getAttribute("loginUser");
 		
 		ArrayList<Reservation> reservList = rs.beforeReservList(m.getMid(), m.getmCode());
 		
 		System.out.println("Controller beforeReservList : " + reservList);
 		
 		mv.addObject("reservList", reservList);
 		mv.setViewName("myPage/myPage");
 		
 		return mv;
 	}
	
	@RequestMapping(value="requestReserv.rv")
	public ModelAndView requestReservList(HttpSession session, ModelAndView mv) {
 		Member m = (Member) session.getAttribute("loginUser");
 		
 		ArrayList<Reservation> reservList = rs.requestReservList(m.getMid());
 		
 		System.out.println("Controller requestReservList : " + reservList);
 		
 		mv.addObject("reservList", reservList);
 		mv.setViewName("myPage/myPage");
 		
 		return mv;
 	}
}
