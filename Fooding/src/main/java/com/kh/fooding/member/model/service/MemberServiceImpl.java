package com.kh.fooding.member.model.service;

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
	
	@Override
	public Member loginMember(Member m) throws LoginException {
		
		return md.loginCheck(m);
	}

	@Override
	public void insertMember(Member m) {
		int result = md.insertMember(m, sqlSession);
	}
}
