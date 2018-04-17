package com.kh.fooding.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.member.model.dao.MemberDao;
import com.kh.fooding.member.model.exception.LoginException;
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
	public ArrayList<Member> selectMemberList() {
		// TODO Auto-generated method stub
		System.out.println("옴");
		
		ArrayList<Member> list = md.selectMemberList();
		
		System.out.println("list" + list);
		
		return list;
	}

	@Override
	public Member loginCheck2(Member m) throws LoginException {
		return md.loginCheck(m);
	}
}
