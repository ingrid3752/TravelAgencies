package com.kh.project.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.Review;
import com.kh.project.service.ReviewService;

@Controller
@RequestMapping("/review")
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
	
	// 특정 엔티티의 리뷰 보기
	@GetMapping("/entity/{entityType}/{entityId}")
	public String showReviewsByEntity(@PathVariable String entityType, @PathVariable int entityId, Model model) {
	    List<Review> reviews = reviewService.getReviewByEntity(entityType, entityId);
	    double averageRating = reviewService.getAverageRatingByEntity(entityType, entityId);
	    model.addAttribute("reviews", reviews);
	    model.addAttribute("averageRating", averageRating);
	    return "review";  
	}

	
	// 리뷰 목록으로 다시 보내기
	@PostMapping("/submit")
	public String submitReview(Review review) {
	    reviewService.saveReview(review);
	    return "redirect:/review/entity/" + review.getEntityType() + "/" + review.getEntityId();
	}

	
	// 리뷰를 작성한 후, 작성한 리뷰 목록 보여주기
	@GetMapping("/review/{entityType}/{entityId}")
	public String showReviewList(@PathVariable String entityType, @PathVariable int entityId, Model model) {
	    List<Review> reviews = reviewService.getReviewByEntity(entityType, entityId);
	    double averageRating = reviewService.getAverageRatingByEntity(entityType, entityId);
	    model.addAttribute("reviews", reviews);
	    model.addAttribute("averageRating", averageRating);
	    return "review";
	}

}
