package com.kh.project.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Review {
	
	private int reviewId;
	private int memCode;
	private ReviewEntity entity;
	private int rating;         
    private String reviewText; 
    private Date reviewDate;
    
}