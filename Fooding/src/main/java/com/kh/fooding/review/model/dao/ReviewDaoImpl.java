package com.kh.fooding.review.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int deleteReview(int rid) {
        int deleteReview = sqlSession.update("Review.deleteReview", rid);
		
		return deleteReview;
	}

}
