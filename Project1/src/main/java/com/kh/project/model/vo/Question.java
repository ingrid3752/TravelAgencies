package com.kh.project.model.vo;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Question {
	
	private int reviewCode;
	private LocalDateTime reviewDate;
	private String packageReview;
	
}
