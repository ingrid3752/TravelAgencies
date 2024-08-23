package com.kh.project.model.vo;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Accom {
	
	private int accomCode;
	private String accomPhone;
	private String location;
	private LocalDateTime accomDate;
	private int headCount;
	private int price;
	private String accomName;
	
}