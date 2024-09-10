package com.kh.project.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class MealHistory {
	
	private int historyId;
	private int memCode;
	private int restCode;
	private String menuName;
	private Date orderDate;
	
}
