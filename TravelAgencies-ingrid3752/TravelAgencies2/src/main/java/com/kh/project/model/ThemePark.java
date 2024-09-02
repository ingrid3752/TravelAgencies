package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class ThemePark {
	private int themeCode;
    private String location;
    private String themePhone;
    private String guide;
}
