package com.kh.fooding.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.board.model.dao.BoardDao;
import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.exception.updateException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.board.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bd;
	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertBoard(Board b ) throws insertException{
		int result; 
		
		result = bd.insertBoard(b, sqlSession);
		
		return result ;
	}

	// 게시물 리스트 가져오기
	@Override
	public ArrayList<Board> selectBoardList(Board b, com.kh.fooding.common.PageInfo pi) {
		ArrayList<Board> list = bd.selectBoardList(b, sqlSession, pi);
		
		return list;
	}
	

	// 리스트 카운트 가져오기
	@Override
	public int getListCount(Board b) {
		
		int result = bd.getListCount(sqlSession, b);
		
		return result;
	}

	//리스트 카운트 전부 조회
	@Override
	public int getAllListCount() {
		int result = bd.getAllListCount(sqlSession);
		
		return result ;
	}

	// 문의 사항 전부 조회
	@Override
	public ArrayList<Board> selectAllBoardList() {
		
		ArrayList<Board> boardList = bd.getAllQuestions(sqlSession);
		
		return boardList;
	}

	// 게시판 검색
	@Override
	public ArrayList<Board> searchQuestions(String searchCon, Map<String, String> data) {
		ArrayList<Board> searchQList = bd.searchQList(sqlSession, searchCon, data);
		
		return searchQList;
	}

	// 게시판 상세 조회
	@Override
	public Board selectOneQuestion(String bid) throws searchException {
	
		Board b = bd.searchOneQuestion(sqlSession, bid);
		return b;
		
	}

	// 문의글 답변 등록
	@Override
	public int insertReply(Board b) {
		
		int result = bd.insertReply(sqlSession, b);
		
		return result;
	}

	// 문의글 답변 리스트 가져오기
	@Override
	public ArrayList<Board> selectAnswerList(Board b) {
		
		ArrayList<Board> answerList = bd.selectAnwerList(b, sqlSession);
		
		return answerList;
	}

	// 문의글 답변 가져오기 admin
	@Override
	public Board selectAnswer(String bid) {
		Board b = bd.selectAnswer(bid, sqlSession);
		return b;
	}

	// 문의글 삭제
	@Override
	public int deleteQuestion(String bid)  throws updateException {
		
		int result = bd.deleteQuestion(bid, sqlSession);
		
		return result;
	}

	// 답변 수정 
	@Override
	public int updateAnswer(String bid,String answer) {
		
		int result = bd.updateAnswer(bid, sqlSession, answer);
	
		return result;
	}

	// 답변 삭제
	@Override
	public int deleteAnswer(String bid) {
		int result = bd.deleteAnswer(bid, sqlSession);
		
		return result;
	}

	
	
}
