package com.kh.fooding.review.model.service;

import com.kh.fooding.review.model.vo.Review;

public interface ReviewService {

	int deleteReview(int rid);

	void insertReview(Review r);

}
