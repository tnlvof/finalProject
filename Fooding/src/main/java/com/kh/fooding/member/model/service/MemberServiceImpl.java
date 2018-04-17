package com.kh.fooding.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.member.model.dao.MemberDao;
import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;

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
		System.out.println("서비스 옴");	
		
		return md.selectMemberList();
	}
	
	//수정할 회원 목록 불러오기
	@Override
	public ArrayList<Member> selectEditList(ArrayList<String> midlist) {
		ArrayList<Member> editlist = md.selectEditList(midlist);
		System.out.println("editlist @dao : " + editlist);
		
		return editlist;
	}
}
