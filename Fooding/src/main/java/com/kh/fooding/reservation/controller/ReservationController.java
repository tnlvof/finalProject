package com.kh.fooding.reservation.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.exception.BookException;
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
	
	
	
	@RequestMapping(value="requestReserv.rv")
	public ModelAndView requestReservList(HttpSession session, ModelAndView mv) {
 		Member m = (Member) session.getAttribute("loginUser");
 		
 		ArrayList<Reservation> reservList = rs.requestReservList(m.getMid());
 		
 		System.out.println("Controller requestReservList : " + reservList);
 		
 		mv.addObject("reservList", reservList);
 		mv.setViewName("myPage/myPage");
 		
 		return mv;
 	}
	
	@RequestMapping(value ="selectAllRsv.rv")
	@ResponseBody
	public ModelAndView selectAllRsvList (ModelAndView mv) {
		//System.out.println("왔?");
		//예약 리스트 불러오기
		ArrayList<Reservation> rsvList = rs.selectAllRsvList();
		
		for(int i = 0; i<rsvList.size();i++) {
			String editDate = rsvList.get(i).getJsonDate();
			rsvList.get(i).setJsonDate(editDate.substring(0, 10));
		}
		
		System.out.println(rsvList);
		
		
		mv.addObject("rsvList", rsvList);
		
		//페이지 넘기기
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping(value="searchReservation.rv")
	@ResponseBody
	public ModelAndView searchRsvList(ModelAndView mv, @RequestBody Map<String, String> data ) {
		
		String searchCon = data.get("key");
		
		ArrayList<Reservation> searchRsvList = rs.searchRsvList(data, searchCon);
		
		for(int i = 0; i<searchRsvList.size();i++) {
			String editDate = searchRsvList.get(i).getJsonDate();
			searchRsvList.get(i).setJsonDate(editDate.substring(0, 10));
		}
		
		
		mv.addObject("searchRsvList", searchRsvList);
		mv.setViewName("jsonView");
		System.out.println( searchRsvList);
		
		return mv;
	}


}
