package com.kh.fooding.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.service.MemberService;
import com.kh.fooding.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
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
	
	//아이디 비밀번호 조회 성공 시 로그인
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
	
	//로그인 할 때 아이디 비빌번호 일치하는지 조회
	@RequestMapping(value = "loginCheck.me", method = RequestMethod.POST)
	public ModelAndView loginCheck2(ModelAndView mv, String userId , String userPwd) {

		Member m = new Member();
		m.setUserId(userId);
		m.setUserPwd(userPwd);
		
		try {
			Member m2 = ms.loginCheck2(m);
			System.out.println("controller m2 : " +m2);
			mv.addObject("member",m2);
		} catch (LoginException e) {
			
		}
		
		mv.setViewName("jsonView");
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
		
		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
		
		String[] birthArr = m.getBirth().split(",");
		String birth = birthArr[0] + "년 " + birthArr[1] + "월 " + birthArr[2] + "일"; 
		m.setBirth(birth);
		
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
	
}
