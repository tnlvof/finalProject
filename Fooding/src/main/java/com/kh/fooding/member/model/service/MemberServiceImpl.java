package com.kh.fooding.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.member.model.dao.MemberDao;
import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.review.model.vo.Review;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao md;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 로그인
	@Override
	public Member loginMember(Member m) throws LoginException {		
		return md.loginCheck(m);
	}
	
	//회원 가입
	@Override
	public void insertMember(Member m) {
		int result = md.insertMember(m, sqlSession);
	}
	
	//관리자 페이지 회원 리스트 불러오기	
	@Override
	public ArrayList<Member> selectMemberList() throws selectMemberException {
		// TODO Auto-generated method stub
	//	System.out.println("서비스 옴");	
		
		return md.selectMemberList();
	}
	
	//수정할 회원 목록 불러오기
	@Override
	public ArrayList<Member> selectEditList(ArrayList<String> midlist) {
		ArrayList<Member> editlist = md.selectEditList(midlist);
		//System.out.println("editlist @service : " + editlist);
		
		return editlist;
	}

	@Override
	// 회원 수정
	public int updateMembers(ArrayList<String> midArr ) {
		
		int result  = md.updateMembers(midArr);
		
		return result;
	}

	@Override
	public ArrayList<Member> searchMember(String searchCon, Map<String, String> data) {
		
		ArrayList<Member> searchList = md.searchMember(searchCon, data);
		
		return searchList;
	}

	@Override
	public int idCheck(String checkId) {
		int result = md.idCheck(checkId,sqlSession);
		
		return result;
	}

	@Override
	public int selectRcount(int mid) {
		int rcount = md.selectRcount(mid);
		return rcount;
	}

	@Override
	public int selectReviewCount(int mid) {
		int reviewCount = md.selectReviewCount(mid);
		return reviewCount;
	}

	@Override
	public ArrayList<Reservation> selectReservList(int mid) {
		ArrayList<Reservation> reservList = md.selectReservList(mid);
		return reservList;
	}

	@Override
	public ArrayList<Review> selectReviewList(int mid) {
		ArrayList<Review> reviewList = md.selectReviewList(mid);
		
		return reviewList;
	}
}
