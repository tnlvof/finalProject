package com.kh.fooding.board.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.service.BoardService;
import com.kh.fooding.board.model.service.BoardServiceImpl;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.vo.Member;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	@RequestMapping(value = "goMyPageQuestions.bo")
	public ModelAndView goMyPageQuestions(ModelAndView mv, HttpSession session, HttpServletRequest request ) {
		
		String currentPageReq= request.getParameter("currentPage");
		
		
		Board b = new Board ();
		Member m = (Member) session.getAttribute("loginUser");
		b.setMid(m.getMid());
		
		
		
		//페이징 처리 추가
				int currentPage;	//현재 페이지를 표시할 변수
				int limit;			//한 페이지에 게시글이 몇 개 보여질 것인지
				int maxPage;		//전체 페이지에서 가장 마지막 페이지
				int startPage;		//한번에 표시될 페이지가 시작할 페이지
				int endPage;		//한번에 표시될 페이지가 끝나는 페이지
				
				//게시판은 1페이지부터 시작함
				currentPage = 1;
				
				if(currentPageReq != null){
					currentPage = Integer.parseInt(currentPageReq);
				}
				
				//한페이지에 보여질 목록 갯수
				limit = 5;
				
				//전체 목록 갯수를 리턴받음				
				int listCount = bs.getListCount(b);
				
				System.out.println("listCount : " + listCount);
				
				//총 페이지수 계산
				//예를 들면, 목록 수가 123개 이면 13페이지가 필요함
				//짜투리 목록이 최소 1개일 때, 1page로 처리하기 위해서
				//전체 목록 / limit + 0.9
				maxPage = (int)((double)listCount / limit + 0.9);
				
				//현재 페이지에 보여줄 시작 페이지 수(10개씩 보여지게 할 경우)
				//아래쪽 페이지 수가 10개씩 보여지게 한다면
				//1, 11, 21, 31...
				startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit + 1;
				
				//목록 아래 보여질 마지막 페이지 수(10, 20, 30, ...)
				endPage = startPage + limit - 1;
				
				if(maxPage < endPage){
					endPage = maxPage;
				}
				
				PageInfo pi = new PageInfo(currentPage, listCount, 
										limit, maxPage, startPage, endPage);
				
		
		//문의 게시판 리스트 불러오기
		
		ArrayList<Board> boardList = bs.selectBoardList(b);
		mv.addObject("pi", pi);
		mv.addObject("boardList", boardList);
			
		//멤버 마이 페이지
		mv.setViewName("myPage/myPageQuestions");
			
		
		return mv;
	}
	
	
	//문의 게시판 전부 조회 - admin 전용
	@RequestMapping(value = "selectAllBoard.bo")
	public ModelAndView selectAllBoard(ModelAndView mv, HttpSession session, HttpServletRequest request ) {
		
		String currentPageReq= request.getParameter("currentPage");
				
			//페이징 처리 추가
				int currentPage;	//현재 페이지를 표시할 변수
				int limit;			//한 페이지에 게시글이 몇 개 보여질 것인지
				int maxPage;		//전체 페이지에서 가장 마지막 페이지
				int startPage;		//한번에 표시될 페이지가 시작할 페이지
				int endPage;		//한번에 표시될 페이지가 끝나는 페이지
				
				//게시판은 1페이지부터 시작함
				currentPage = 1;
				
				if(currentPageReq != null){
					currentPage = Integer.parseInt(currentPageReq);
				}
				
				//한페이지에 보여질 목록 갯수
				limit = 10;
				
				//전체 목록 갯수를 리턴받음				
				int listCount = bs.getAllListCount();
				
				System.out.println("listCount : " + listCount);
				
				//총 페이지수 계산
				//예를 들면, 목록 수가 123개 이면 13페이지가 필요함
				//짜투리 목록이 최소 1개일 때, 1page로 처리하기 위해서
				//전체 목록 / limit + 0.9
				maxPage = (int)((double)listCount / limit + 0.9);
				
				//현재 페이지에 보여줄 시작 페이지 수(10개씩 보여지게 할 경우)
				//아래쪽 페이지 수가 10개씩 보여지게 한다면
				//1, 11, 21, 31...
				startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit + 1;
				
				//목록 아래 보여질 마지막 페이지 수(10, 20, 30, ...)
				endPage = startPage + limit - 1;
				
				if(maxPage < endPage){
					endPage = maxPage;
				}
				
				PageInfo pi = new PageInfo(currentPage, listCount, 	limit, maxPage, startPage, endPage);
				
		
		//문의 게시판 리스트 불러오기
		
		ArrayList<Board> boardList = bs.selectAllBoardList();
		
		System.out.println("boardList 전부 : " + boardList);
		
				
		mv.addObject("pi", pi);
		mv.addObject("boardList", boardList);
		
		//어드민 페이지
		mv.setViewName("jsonView");
		
		
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
	
	//게시판 검색
	@RequestMapping(value="searchQuestions.bo", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView searchQuestions(ModelAndView mv, @RequestBody Map<String, String> data) {
		System.out.println("넘어옴?");
		System.out.println(data);

		String searchCon = data.get("key");

		ArrayList<Board> searchQList = bs.searchQuestions(searchCon, data);
		
		mv.addObject("searchList", searchQList);
		mv.setViewName("jsonView");	
		
		System.out.println("searchQList : " + searchQList);
		
		return mv;
	}
	
	
	
	

}
