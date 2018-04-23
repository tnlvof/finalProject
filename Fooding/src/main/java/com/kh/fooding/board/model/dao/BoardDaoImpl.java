package com.kh.fooding.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertBoard(Board b, SqlSessionTemplate sqlSession ) throws insertException {
		int result ;
		
		result = sqlSession.insert("Board.insertBoard", b);
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

	


		
}
