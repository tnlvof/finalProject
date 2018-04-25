package com.kh.fooding.board.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.member.model.vo.Member;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertBoard(Board b, SqlSessionTemplate sqlSession ) throws insertException {
		int result ;
		
		result = sqlSession.insert("Board.insertQuestion", b);
		System.out.println( "리절트 : " + result);
		
		if(result < 0) {
			throw new insertException("문의글 등록 실패");
		}
		
		return result;
	}

	// BoardList 조회
	@Override
	public ArrayList<Board> selectBoardList(Board b, SqlSessionTemplate sqlSession) {
		
		System.out.println("dao와엿");
		
		ArrayList<Board> list = (ArrayList) sqlSession.selectList("Board.selectBoardList", b); 
		
		System.out.println(list);
		
		return list ;
	}

	// 보드 리스트 카운트 가져오기
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, Board b) {
		
		int result = sqlSession.selectOne("Board.countList", b); 
				
		return result;
	}

	// 보드 리스트 전부 가져오기
	@Override
	public int getAllListCount(SqlSessionTemplate sqlSession) {
		int result = sqlSession.selectOne("Board.countAllQuestions");
		return result;
	}

	// 문의 사항 전부 가져오기
	@Override
	public ArrayList<Board> getAllQuestions(SqlSessionTemplate sqlSession ) {
		ArrayList<Board > boardList = (ArrayList)sqlSession.selectList("Board.getAllQuestions");
		return boardList ;
	}

	// 게시글 조회
	@Override
	public ArrayList<Board> searchQList(SqlSessionTemplate sqlSession, String searchCon,Map<String, String> data) {
				

		String statement = "";
		
		switch(searchCon) {
			case "제목": statement = "Board.searchTitle";break;
			case "글쓴이":statement = "Board.searchWriter";break;
			case "처리여부":statement = "Board.searchAnswered";break;
		}
		
		ArrayList<Board> searchQList = (ArrayList) sqlSession.selectList(statement, data);
		
		
		
		return searchQList;
	}

	


		
}
