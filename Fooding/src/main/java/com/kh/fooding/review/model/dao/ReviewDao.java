package com.kh.fooding.review.model.dao;

import com.kh.fooding.review.model.vo.Review;

public interface ReviewDao {

	int deleteReview(int rid);

	void insertReview(Review r);

}
