package com.kh.fooding.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.SynchronossPartHttpMessageReader;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.exception.LoginException;
import com.kh.fooding.member.model.exception.selectMemberException;
import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.reservation.model.vo.Reservation;
import com.kh.fooding.review.model.vo.Review;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Override
	public Member loginCheck(Member m) throws LoginException {
		System.out.println("dao userId : " + m.getUserId());
		System.out.println("dao userPwd : " + m.getUserPwd());
		System.out.println("sqlSession : " + sqlSession);
		
		Member member = null;
		
		String cryptPwd = sqlSession.selectOne("Member.selectPwd", m.getUserId());
		
		System.out.println("암호화된 비밀번호 : " + cryptPwd);
		
		if(!passwordEncoder.matches(m.getUserPwd(), cryptPwd)){
			throw new LoginException("로그인 실패!");
		}else{
			member = sqlSession.selectOne("Member.loginCheck", m);
		}
		return member; 
	}

	@Override
	public int insertMember(Member m, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("Member.insertMember",m);
	}
	
	//업체회원가입
	@Override
	public int insertStore(Member m, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("Member.insertStore", m);
	}

	@Override
	public ArrayList<Member> selectMemberList() throws selectMemberException {
	//	System.out.println("Dao 옴 ");		
	
		ArrayList<Member> memberlist = (ArrayList) sqlSession.selectList("Member.selectMemberList");			
				
		if(memberlist == null) {
			throw new selectMemberException("회원 정보 리스트 조회 실패");
		}		
		
		//System.out.println("list DAO: " + memberlist);
		
		
		return memberlist;
	}

	//수정할 회원 리스트
	@Override
	public ArrayList<Member> selectEditList(ArrayList<String> midlist) {
		ArrayList<Member> editList = (ArrayList) sqlSession.selectList("Member.selectEditList", midlist);
		
		return editList;
	}

	@Override
	// 회원 수정 메소드
	public int updateMembers(ArrayList<String> mid) {
		//탈퇴여부 변경 - Y N
		//신고 횟수 초기화.
		
		int result = sqlSession.update("Member.updateMembers", mid);
		System.out.println( "update Results : " + result);
		return result;
	}

	// 회원 검색
	@Override
	public ArrayList<Member> searchMember(String searchCon, Map<String, String> data) {
		
		String statement = "";
		
		switch(searchCon) {
			case "아이디": statement = "Member.searchId";break;
			case "이름":statement = "Member.searchName";break;
			case "연락처":statement = "Member.searchPhone";break;
		}
		
		ArrayList<Member> searchMember = (ArrayList) sqlSession.selectList(statement, data);
		
		return searchMember;
	}

	@Override
	public int idCheck(String checkId, SqlSessionTemplate sqlSession) {
		
		int result = sqlSession.selectOne("Member.idCheck",checkId);
		
		System.out.println("dao idCheck : " + result);
		
		return result;
	}

	@Override
	public int selectRcount(int mid, String mCode) {
        String countQ = "";
		
		switch(mCode) {
			case "일반": countQ = "Reservation.selectRcount";break;
			case "업체": countQ = "Reservation.selectSrcount";break;
		}
		
		int rcount = sqlSession.selectOne(countQ, mid);
		
		System.out.println("mid : " + mid);
		System.out.println("rcount : " + rcount);
		
		return rcount;
	}

	@Override
	public int selectReviewCount(int mid, String mCode) {
        String countQ = "";
		
		switch(mCode) {
			case "일반": countQ = "Review.selectReviewCount";break;
			case "업체": countQ = "Review.selectSreviewCount";break;
		}
		
		int reviewCount = sqlSession.selectOne(countQ, mid);
		
		System.out.println("reviewCount : " + reviewCount);
		
		return reviewCount;
	}

	@Override
	public ArrayList<Reservation> selectReservList(int mid, String mCode) {
        String reservQ = "";
		
		switch(mCode) {
			case "일반": reservQ = "Reservation.selectReservList";break;
			case "업체": reservQ = "Reservation.selectStoreReservList";break;
		}
		
		
		ArrayList<Reservation> selectReservList = (ArrayList) sqlSession.selectList(reservQ, mid);
		
		return selectReservList;
		
	}

	@Override
	public ArrayList<Review> selectReviewList(int mid, String mCode, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
        String reviewQ = "";
		
		switch(mCode) {
			case "일반": reviewQ = "Review.selectReviewList";break;
			case "업체": reviewQ = "Review.selectStoreReviewList";break;
		}
		
        ArrayList<Review> reviewList = (ArrayList)sqlSession.selectList(reviewQ, mid, rowBounds);
		
		System.out.println("reviewList : " + reviewList);
		
		return reviewList;
	}

	@Override
	public int profileUpload(Member m, SqlSessionTemplate sqlSession) {
        int result = sqlSession.update("Member.profileUpload", m);
		
		System.out.println("profileUpload : " + result);
		
		return result;
	}
	// 패스워드 리셋하기 
	@Override
	public int resetPwd(String password, Member checkUser) {
		
		checkUser.setUserPwd(password);
	
		int result = sqlSession.update("Member.resetPwd", checkUser);
		
		return result;
	}
 
	@Override
	public Member checkUser(Map<String, String> data) {
		Member checkUser = sqlSession.selectOne("Member.checkUser", data);
		return checkUser;
	}

	@Override
	public Member findId(Map<String, String> data) {
		Member m = new Member();
		m.setEmail(data.get("email"));
		Member findId = sqlSession.selectOne("Member.findId", m);
		return findId;
	}
	
}
