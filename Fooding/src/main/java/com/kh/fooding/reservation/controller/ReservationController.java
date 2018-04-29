package com.kh.fooding.reservation.controller;

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

import com.kh.fooding.reservation.model.service.ReservationService;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService rs;

	@RequestMapping(value ="cancelReserv.rv", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public ModelAndView cancelReserv(HttpServletRequest request, ModelAndView mv) {
		int rvid = Integer.parseInt(request.getParameter("rvid"));
		System.out.println("Controller rvid : " + rvid);
		
		int cancelReserv = rs.cancelReservation(rvid);
		
		mv.addObject("cancelReserv", cancelReserv);
		mv.setViewName("myPage/myPage");
		
		return mv; 
		
	}
}
