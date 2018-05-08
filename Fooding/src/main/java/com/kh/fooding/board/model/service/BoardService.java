package com.kh.fooding.board.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.exception.updateException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.vo.Member;

public interface BoardService {

	int insertBoard(Board b) throws insertException;

	ArrayList<Board> selectBoardList(Board b, PageInfo pi );

	int getListCount(Board b);

	int getAllListCount();

	ArrayList<Board> selectAllBoardList();

	ArrayList<Board> searchQuestions(String searchCon, Map<String, String> data);

	Board selectOneQuestion(String bid)  throws searchException;

	int insertReply(Board b);

	ArrayList<Board> selectAnswerList(Board b);

	Board selectAnswer(String bid);

	int deleteQuestion(String bid) throws updateException ;

	int updateAnswer(String bid, String answer);

	int deleteAnswer(String bid);
	
	//공지사항 전체 목록
	public List<Board> listAll() throws Exception;

	void create(Board board) throws Exception;

	//공지사항조회수!!
	public void increaseViewCnt(int bid, HttpSession session) throws Exception;

	//공지글 상세보기
	public Board read(int bid) throws Exception;

    // 03. 공지 수정
    public void update(Board board) throws Exception;
    // 04. 공지 삭제
    public void delete(int bid) throws Exception;

}
