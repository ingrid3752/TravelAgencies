package com.kh.project.reservation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class StadiumRes {
	private String startDate;
	private String endDate;
	private int price;
	private String stadium;
	private String memInfo;
	private String pmtAmt;
}
