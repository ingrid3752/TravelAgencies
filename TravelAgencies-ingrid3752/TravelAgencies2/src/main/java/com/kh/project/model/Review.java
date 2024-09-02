package com.kh.project.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Review {
	private int reviewCode;
	private Date reviewDate;
	private String packageReview;
	private String memInfo;
	private String pmtAmt;
}
