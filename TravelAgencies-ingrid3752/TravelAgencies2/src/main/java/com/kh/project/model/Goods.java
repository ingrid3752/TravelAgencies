package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Goods {
	private int GoodsCode;
	private String localGoods;
	private String specialGoods;
	private String pmtAmt;
}
