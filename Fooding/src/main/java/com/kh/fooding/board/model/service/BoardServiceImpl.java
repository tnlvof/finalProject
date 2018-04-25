package com.kh.fooding.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.board.model.dao.BoardDao;
import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.member.model.vo.Member;

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
	public ArrayList<Board> selectBoardList(Board b) {
		System.out.println("떠비뜨");
		ArrayList<Board> list = bd.selectBoardList(b, sqlSession);
		
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
	
	
}
