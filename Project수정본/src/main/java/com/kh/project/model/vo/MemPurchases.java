package com.kh.project.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class MemPurchases {
	
	private int purchaseId;     
	private int memId;        
    private int goodsCode;     
    private int themeCode;         
    private Date purchaseDate;
    
}
