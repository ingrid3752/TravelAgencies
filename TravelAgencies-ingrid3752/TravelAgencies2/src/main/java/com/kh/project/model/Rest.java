package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Rest {
	private int restCode;
    private String restName;
    private String restLocation;
    private String restPhone;
    private int avgPrice;
    private int restClassCode;
}
