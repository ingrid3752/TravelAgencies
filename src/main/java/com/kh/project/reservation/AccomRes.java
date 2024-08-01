package com.kh.project.reservation;

import java.sql.Time;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class AccomRes {
	private Date date;
	private Time time; 
	private int headCount;
	private int price;
	private String pmtAmt;
	private String accom;
	private String memInfo;
}
