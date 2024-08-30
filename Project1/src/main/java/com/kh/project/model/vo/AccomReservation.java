package com.kh.project.model.vo;

import java.time.LocalDateTime;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class AccomReservation {
	
	private int reservationId; 
	private int memId; 
	private int accomCode;
	private String accomName;
	private LocalDateTime startDate;
	private LocalDateTime endDate;
	private int seats; 
	
}
