package com.kh.project.model.vo;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Stadium {
	
	private int stadiumCode;
	private String stadiumEvent;
	private LocalDateTime stadiumDate;
	private int price;
	private String game;
	
}