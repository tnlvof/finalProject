package com.kh.fooding.reservation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.service.ReservationService;

public class ReservationController {
	@Autowired
	private ReservationService rs;

	/*@RequestMapping(value ="cancelReserv.rv")
	public String cancelReserv(HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		
		String result = rs.cancelReserv(m.getMid());
		
		return "myPage/myPage";
	}*/
}
