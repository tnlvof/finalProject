package com.kh.fooding.board.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.exception.updateException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.common.PageInfo;

public interface BoardDao {

	int insertBoard(Board b, SqlSessionTemplate sqlSession) throws insertException;

	ArrayList<Board> selectBoardList(Board b, SqlSessionTemplate sqlSession, PageInfo pi);

	int getListCount(SqlSessionTemplate sqlSession, Board b);

	int getAllListCount(SqlSessionTemplate sqlSession);

	ArrayList<Board> getAllQuestions(SqlSessionTemplate sqlSession);

	ArrayList<Board> searchQList(SqlSessionTemplate sqlSession, String searchCon, Map<String, String> data) ;

	Board searchOneQuestion(SqlSessionTemplate sqlSession, String bid)  throws searchException;

	int insertReply(SqlSessionTemplate sqlSession, Board b);

	ArrayList<Board> selectAnwerList(Board b, SqlSessionTemplate sqlSession);

	Board selectAnswer(String bid, SqlSessionTemplate sqlSession);

	int deleteQuestion(String bid, SqlSessionTemplate sqlSession)  throws updateException ;

	int updateAnswer(String bid, SqlSessionTemplate sqlSession, String answer);

	int deleteAnswer(String bid, SqlSessionTemplate sqlSession);


	//공지사항 목록 조회
	 public   List<Board> listAll();

	 //게시글 작성후 목록에 보이는..그거
	void create(Board board) throws Exception;

	
	//공지글 상세보기 
	Board read(int bid) throws Exception;

	//조회수(공지)
	public void increaseViewCnt(int bid) throws Exception;

    // 03. 게시글 수정
    public void update(Board board) throws Exception;
    // 04. 게시글 삭제
    public void delete(int bid) throws Exception;
}
