package com.kh.fooding.review.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.review.model.vo.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int deleteReview(int rid) {
        int deleteReview = sqlSession.update("Review.deleteReview", rid);
		
		return deleteReview;
	}

	@Override
	public void insertReview(Review r) {
		sqlSession.insert("Review.insertReview",r);
	}

	@Override
	public ArrayList<Review> selectReview(int sid) {
		
		ArrayList<Review> rList = (ArrayList)sqlSession.selectList("Review.selectReveiw",sid);

		System.out.println("dao rList : " + rList);
		
		return rList;
	}
	
}
