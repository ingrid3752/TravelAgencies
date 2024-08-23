package com.kh.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Review;
import com.kh.project.model.vo.ReviewEntity;

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
	public List<Review> getReviewsByEntity(String entityType, int entityId) {
		ReviewEntity entity = new ReviewEntity(entityType, entityId);
		return reviewMapper.getReviewsByEntity(entity);
	}
	
	// 특정 회원이 작성한 리뷰 목록 조회
	public List<Review> getReviewsByMember(int memCode) {
		return reviewMapper.getReviewsByMember(memCode);
	}
	
	// 특정 엔티티의 평균 평점 조회
	public double getAverageRatingByEntity(String entityType, int entityId) {
		ReviewEntity entity = new ReviewEntity(entityType, entityId);
		return reviewMapper.getAverageRatingByEntity(entity);
	}
	
}