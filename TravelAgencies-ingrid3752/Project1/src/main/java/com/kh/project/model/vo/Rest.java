package com.kh.project.model.vo;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Rest {
	
	private int restCode;
	private String restName;
	private String restLocation;
	private String restPhone;
	private int avgPrice;
	private LocalDateTime restDate;
	private int people;
	private int amount;
	
}
