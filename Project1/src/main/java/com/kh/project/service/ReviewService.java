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
	public List<Review> getReviewByEntity(String entityType, int entityId) {
		ReviewEntity entity = new ReviewEntity(entityType, entityId);
		System.out.println("ET : " + entityType);
		System.out.println("EI : " + entityId);
		return reviewMapper.getReviewByEntity(entity);
	}
	
	// 리뷰 저장
	public void saveReview(Review review) {
		reviewMapper.insertReview(review);
	}
	
	// 특정 회원이 작성한 리뷰 목록 조회
	public List<Review> getReviewByMember(int memCode) {
		return reviewMapper.getReviewByMember(memCode);
	}
	
	// 특정 엔티티의 평균 평점 조회
	public double getAverageRatingByEntity(String entityType, int entityId) {
		ReviewEntity entity = new ReviewEntity(entityType, entityId);
		return reviewMapper.getAverageRatingByEntity(entity);
	}
	
}
