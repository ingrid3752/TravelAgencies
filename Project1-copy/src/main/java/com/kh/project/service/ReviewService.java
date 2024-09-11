package com.kh.project.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Review;
import mapper.ReviewMapper;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	// 리뷰 작성
	public void addReview(Review reivew) {
		reviewMapper.insertReview(reivew);
	}
	
	// 특정 엔티티의 리뷰 목록 조회
	public List<Review> getReviewByEntity(String entityType, int entityId) {
		List<Review> reviews = reviewMapper.getReviewByEntity(entityType, entityId);
		return reviews;
	}
	
	// 리뷰 저장
	public void saveReview(Review review) {
		reviewMapper.insertReview(review);
	}
	
	// 특정 엔티티의 평균 평점 조회
	public Double getAverageRatingByEntity(String entityType, int entityId) {
		Double averageRating = reviewMapper.getAverageRatingByEntity(entityType, entityId);
		return averageRating;
	}
	
}
