package com.kh.fooding.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginCheck(Member m) throws LoginException {
		System.out.println("dao userId : " + m.getUserId());
		System.out.println("dao userPwd : " + m.getUserPwd());
		System.out.println("sqlSession : " + sqlSession);
		
		Member member = sqlSession.selectOne("Member.loginCheck", m);
		
		if(member == null){
			throw new LoginException("로그인 실패!");
		}
		
		return member;
	}
	
	
	
}
