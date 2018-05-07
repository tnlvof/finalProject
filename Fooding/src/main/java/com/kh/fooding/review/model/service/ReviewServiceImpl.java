package com.kh.fooding.review.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fooding.review.model.dao.ReviewDao;
import com.kh.fooding.review.model.vo.Review;

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

	@Override
	public void insertReview(Review r) {
		rd.insertReview(r);
	}

	@Override
	public ArrayList<Review> selectReview(int sid) {
		
		return rd.selectReview(sid);
	}

}
