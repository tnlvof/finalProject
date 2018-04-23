package com.kh.fooding.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.fooding.member.model.service.MemberService;

public class ReservationController {
	@Autowired
	private MemberService ms;
	
	//예약 카운트
	/*@RequestMapping(value = "countReserv.re")
	public int countReserv() {
		
	}*/
}
