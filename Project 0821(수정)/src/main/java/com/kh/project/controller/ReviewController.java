package com.kh.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.Member;
import com.kh.project.model.vo.Review;
import com.kh.project.service.ReviewService;

@Controller
@RequestMapping("/reviews")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	// 리뷰 작성
	@PostMapping("/add")
	@ResponseBody
	public void addReview(@RequestBody Review review) {
		
		reviewService.addReview(review);
	}
	
	// 특정 엔티티의 리뷰 목록 조회
	@GetMapping("/entity")
    @ResponseBody
    public List<Review> getReviewsByEntity(String entityType, int entityId) {
		// 컨트롤러 단에서 멤버 정보 필요할 때 즉 로그인 정보!!! 로그인한 사람 정보
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Member member = (Member) authentication.getPrincipal();
        return reviewService.getReviewByEntity(entityType, entityId);
    }
	
	// 특정 회원이 작성한 리뷰 목록 조회
	@GetMapping("/member")
    @ResponseBody
    public List<Review> getReviewsByMember(int memCode) {
		
        return reviewService.getReviewByMember(memCode);
    }
	
	// 특정 엔티티의 평균 평점 조회
	@GetMapping("/averageRating")
    @ResponseBody
    public double getAverageRatingByEntity(String entityType, int entityId) {
		
        return reviewService.getAverageRatingByEntity(entityType, entityId);
    }
	
}