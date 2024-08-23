package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class RecommendedMenu {
	
	private String menuName;
	private int orderCount;
	
}