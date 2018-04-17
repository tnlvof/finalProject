package com.kh.fooding.member.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.service.MemberService;
import com.kh.fooding.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired
	private MemberService ms;
	
/*	@Autowired
	private BCryptPasswordEncoder passwordEncoder;*/
	
	/*@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public String loginCheck(Member m , HttpSession session, Model model) {

		System.out.println("controller Member : " + m);

		try { 
			Member loginUser = ms.loginMember(m);

			session.setAttribute("loginUser", loginUser);

			return "main/main";

		} catch (LoginException e) {
			model.addAttribute("message", e.getMessage());
			return "common/errorPage";
		}
	}*/
	
	@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public ModelAndView loginCheck(Member m, ModelAndView mv, SessionStatus status) {

		System.out.println("controller Member : " + m);

		try {
			Member loginUser = ms.loginMember(m);

			mv.addObject("loginUser", loginUser);
			status.setComplete();

			mv.setViewName("main/main");

		} catch (LoginException e) {

			mv.addObject("message", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;

	}
	
	@RequestMapping(value = "goMemberJoin.me")
	public String goMemberJoin() {
		
		return "member/memberJoin";
	}
	
	@RequestMapping(value = "goStoreJoin.me")
	public String goStoreJoin() {
		
		return "member/storeJoin";
	}
	
	@RequestMapping(value ="memberJoin.me")
	public String memberJoin(Member m, Model model) {
		
//		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
		
		System.out.println("controller m : " + m );
		
		ms.insertMember(m);
		
		return "main/main";
	}
	
	@RequestMapping(value = "logout.me", method = RequestMethod.GET)
	public String logout(/*HttpSession session,*/SessionStatus status) {
		
//		session.invalidate();
		
		status.setComplete();
		
		return "main/main";
	}
	
	@RequestMapping(value ="goMain.me")
	public String goMain() {
		
		return "main/main";
	}
	

	//멤버 리스트 불러오기 
	
		@RequestMapping(value = "selectMemberList.me", method = RequestMethod.POST)	
		public ModelAndView selectMemberList(ModelAndView mv) {
						
			//System.out.println("멤버 컨트롤러");		
				
				try {
					ArrayList<Member> memberlist = ms.selectMemberList();
					System.out.println("memberlist @controller " + memberlist);
					
					mv.addObject("memberlist", memberlist);
					mv.setViewName("jsonView");			
					
				} catch (selectMemberException e) {
					mv.addObject("message", e.getMessage());
					mv.setViewName("common/errorPage");				
				}			
				
				
				return mv;				
				
			}
	

	// 멤버 수정 페이지로 전환
	@RequestMapping(value = "showEditForm.me", method = RequestMethod.POST)	
		
	public ModelAndView showEditForm(ModelAndView mv, @RequestParam("mid") ArrayList<String> midlist) {
		//System.out.println("수정페이지");
		//System.out.println("midlist : "+midlist);
		
		ArrayList<Member> editList = ms.selectEditList(midlist); 
		
		//System.out.println("editList @ Controller : " + editList);
		mv.addObject("editList", editList);
		mv.setViewName("admin/memberEdit" );
	
		return mv;
	}
	
	@RequestMapping(value = "updateMembers.me", method = RequestMethod.POST)		
	public ModelAndView updateMembers(ModelAndView mv, Member m,  @RequestParam("mid") ArrayList<String> midlist) {
	
		ArrayList<Member> editList = ms.selectEditList(midlist); 
		
		//System.out.println("editList @ Controller : " + editList);
		mv.addObject("editList", editList);
		mv.setViewName("admin/memberEdit" );
	
		return mv;
	}
		

		
		
	
}
