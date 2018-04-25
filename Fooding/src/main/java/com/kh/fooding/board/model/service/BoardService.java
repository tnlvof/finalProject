package com.kh.fooding.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.fooding.board.model.exception.insertException;
import com.kh.fooding.board.model.exception.searchException;
import com.kh.fooding.board.model.vo.Board;
import com.kh.fooding.member.model.vo.Member;

public interface BoardService {

	int insertBoard(Board b) throws insertException;

	ArrayList<Board> selectBoardList(Board b );

	int getListCount(Board b);

	int getAllListCount();

	ArrayList<Board> selectAllBoardList();

	ArrayList<Board> searchQuestions(String searchCon, Map<String, String> data);

	Board selectOneQuestion(String bid)  throws searchException;

	int insertReply(Board b);

	ArrayList<Board> selectAnswerList(Board b);

}
