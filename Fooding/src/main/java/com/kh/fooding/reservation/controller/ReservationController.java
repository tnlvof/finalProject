package com.kh.fooding.reservation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.service.ReservationService;
import com.kh.fooding.reservation.model.vo.Reservation;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService rs;

	@RequestMapping(value ="cancelReserv.rv")
	public ModelAndView cancelReserv(HttpSession session, ModelAndView mv) {
		Member m = (Member) session.getAttribute("loginUser");
	
		int cancelReserv = rs.cancelReservation(m.getMid());
		
		mv.addObject("cancelReserv", cancelReserv);
		mv.setViewName("myPage/myPage");
		
		return mv;
		
	}
}
