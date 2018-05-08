package com.kh.fooding.review.model.service;

import java.util.ArrayList;

import com.kh.fooding.review.model.vo.Review;

public interface ReviewService {

	int deleteReview(int rid);

	void insertReview(Review r);

	ArrayList<Review> selectReview(int sid);

}
