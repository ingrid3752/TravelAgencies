package com.kh.project.model.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class AccomFavorites {
	
	private int favoriteId;       
    private int memId;          
    private int accomId; 
    private Date dateAdded;
    
}
