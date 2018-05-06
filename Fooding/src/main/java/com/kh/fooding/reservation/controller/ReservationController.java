package com.kh.fooding.reservation.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.exception.BookException;
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
	
	@RequestMapping(value="insertRsv.rv")
	public ModelAndView insertBook(HttpSession session, ModelAndView mv, Reservation rsv ) {
		
		
		System.out.println(rsv);
		
		try {
			int result = rs.insertBook(rsv);
			
			ArrayList<Reservation> reservList = rs.selectRsvList(rsv);
			
			System.out.println("넣고 : " + reservList);
			mv.addObject("reservList", reservList);
			mv.setViewName("myPage/myPage");
			
			
		} catch (BookException e) {
			mv.addObject("message", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	
	
}
