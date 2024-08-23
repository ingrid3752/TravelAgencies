    package com.kh.project.model.vo;

	import lombok.AllArgsConstructor;
	import lombok.Data;
	import lombok.NoArgsConstructor;

	@Data @NoArgsConstructor @AllArgsConstructor
	public class Goods {
		
		private int goodsCode;
		private String goodsName;
		private double price;
		private int stock;
		private String description;
		private String category;
		private int themeCode;
		private int memCode;
		
	}

