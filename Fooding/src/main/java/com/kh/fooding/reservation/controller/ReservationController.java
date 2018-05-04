package com.kh.fooding.reservation.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.service.ReservationService;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.store.model.vo.StoreSam;

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
	
	@RequestMapping(value="beforeReserv.rv")
	public ModelAndView beforeReservList(HttpSession session, ModelAndView mv) {
 		Member m = (Member) session.getAttribute("loginUser");
 		
 		ArrayList<Reservation> reservList = rs.beforeReservList(m.getMid());
 		
 		System.out.println("Controller beforeReservList : " + reservList);
 		
 		mv.addObject("reservList", reservList);
 		mv.setViewName("myPage/myPage");
 		
 		return mv;
 	}
	
	//예약페이지 이동
	@RequestMapping(value="goBookingPage.rv")
	public ModelAndView goBook(HttpSession session, ModelAndView mv, HttpServletRequest request) {
	
		String sid = request.getParameter("storeId");
		
		StoreSam sInfo = rs.getStoreInfo(sid);
		
		if(session.getAttribute("loginUser") != null) {
			
			mv.addObject("sInfo", sInfo);		
			mv.setViewName("store/bookingPage");
			
		} else {
			mv.setViewName("store/loginPage");
		}
		
		return mv;
	}
	
	
}
