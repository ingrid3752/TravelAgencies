package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Stadium {
	private int stadiumCode;
	private String stadiumEvent;
	private String game;
	private String gameSkd;
}
