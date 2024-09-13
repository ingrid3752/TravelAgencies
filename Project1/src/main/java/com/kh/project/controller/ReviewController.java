package com.kh.project.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.project.model.vo.Member;
import com.kh.project.model.vo.Review;
import com.kh.project.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	// 리뷰 작성
	@PostMapping("/add")
    public String addReview(Review review) {
        reviewService.addReview(review);
        return "redirect:/review/entity/" + review.getEntityType() + "/" + review.getEntityId();
    }
	
	// 특정 엔티티의 리뷰 목록 및 평균 평점 조회 후 JSP로 이동
	@GetMapping("/entity/{entityType}/{entityId}")
	public String showReviewsByEntity(@PathVariable String entityType, @PathVariable int entityId, Model model) {

		List<Review> reviews = reviewService.getReviewByEntity(entityType, entityId);
		double averageRating = reviewService.getAverageRatingByEntity(entityType, entityId);
		model.addAttribute("reviews", reviews);
		model.addAttribute("averageRating", averageRating);
		return "review";

	}
	
    // 특정 회원이 작성한 리뷰 목록 조회 (JSP로 이동 필요시 활용)
    @GetMapping("/member/{memCode}")
    public String getReviewsByMember(@PathVariable int memCode, Model model) {
        List<Review> reviews = reviewService.getReviewByMember(memCode);
        model.addAttribute("reviews", reviews);
        return "review";  // 특정 회원의 리뷰를 표시할 JSP로 이동
    }
    
	// 리뷰 목록으로 다시 보내기
	@PostMapping("/submit")
	public String submitReview(Review review) {
	    reviewService.saveReview(review);
	    return "redirect:/review/entity/" + review.getEntityType() + "/" + review.getEntityId();
	}

	
	// 리뷰를 작성한 후, 작성한 리뷰 목록 보여주기
	@GetMapping("/review/{entityType}/{entityId}")
	public String showReviewList(@PathVariable String entityType, @PathVariable Integer entityId, Model model) {
	    List<Review> review = reviewService.getReviewByEntity(entityType, entityId);
	    double averageRating = reviewService.getAverageRatingByEntity(entityType, entityId);
	    model.addAttribute("review", review);
	    model.addAttribute("averageRating", averageRating);
	    return "review";
	}

}
