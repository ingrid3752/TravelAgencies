package com.kh.project.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class AccomRes {
    private int resCode;
    private String date;
    private String time;
    private int headcount;
    private int price;
    private int pmtAmtCode;
    private int accomCode;
    private int memCode;
}