package com.kh.project.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class AccomReservation {
	
	private int reservationId; 
	private int memId; 
	private int accomCode; 
	private Date reservationDate; 
	private int seats; 
	private String requests; 
}