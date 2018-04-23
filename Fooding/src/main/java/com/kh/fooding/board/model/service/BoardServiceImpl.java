package com.kh.fooding.board.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.board.model.dao.BoardDao;
import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.vo.Board;

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
	
	
}
