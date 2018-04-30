package com.kh.fooding.review.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.review.model.dao.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewDao rd;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int deleteReview(int rid) {
        int deleteReview = rd.deleteReview(rid);
		
		System.out.println("Service rid : " + rid);
		System.out.println("Service deleteReview : " + deleteReview);
		
		return deleteReview;
	}

}
