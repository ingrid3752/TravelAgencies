package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class PmtAmt {
	private int pmtAmtCode;
	private String accom;
	private String meal;
	private String goods;
	private String ticket;
	private int sumPrice;
	private String memInfo;
}
