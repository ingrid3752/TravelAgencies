package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Accom {
	private int accomCode;
    private String phone;
    private String location;
    private int price;
    private String nameOfAccom;
    private String breakfastAvailability;
    private int accomClassCode;
}
