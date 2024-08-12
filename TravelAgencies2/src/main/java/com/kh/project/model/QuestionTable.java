package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class QuestionTable {
	private int questionCode;
	private String title;
	private String qna;
	private String memInfo;
}
