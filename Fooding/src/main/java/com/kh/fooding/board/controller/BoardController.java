package com.kh.fooding.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.service.BoardService;
import com.kh.fooding.board.model.service.BoardServiceImpl;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.member.model.vo.Member;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	@RequestMapping(value = "goMyPageQuestions.bo")
	public ModelAndView goMyPageQuestions(ModelAndView mv, HttpSession session ) {
		
		//문의 게시판 리스트 불러오기
	
		Board b = new Board ();
		Member m = (Member) session.getAttribute("loginUser");
		b.setMid(m.getMid());
		
		
		ArrayList<Board> boardList = bs.selectBoardList( b );
		
		//mv.addObject("boardList", boardList);
		mv.setViewName("myPage/myPageQuestions");
		
		return mv;
	}
	
	//게시글 올리기
	@RequestMapping(value="insertBoard.bo")
	public ModelAndView insertBoard(ModelAndView mv , Board b, HttpSession session ,String bContent ) {
		System.out.println("오니?");
		Member m = (Member) session.getAttribute("loginUser");
		b.setMid(m.getMid());		
		b.setbContent(bContent);
		b.setbTitle(bContent);	
		
		System.out.println(b);
		
		try {
			int result = bs.insertBoard(b);
			mv.setViewName("myPage/myPageQuestions");
			
		} catch (insertException e) {
			
			mv.addObject("message", e.getMessage());
			mv.setViewName("common/errorPage");
		}
		
		
		return mv;
	}
	
	
	//게시판 상세 조회
	@RequestMapping(value="selectOne.bo")
	public String selectOneBoard(HttpServletRequest request) {
		String bid = request.getParameter("bid");
		System.out.println(bid);
		
		
		return "admin/qnaDetail"; 
	}

}
