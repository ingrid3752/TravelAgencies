package com.kh.project.model.vo;



import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class AccomFavorites {
	
	private int favoriteId;       
    private int memCode;          
    private int accomId; 
    private Date dateAdded;
    
}