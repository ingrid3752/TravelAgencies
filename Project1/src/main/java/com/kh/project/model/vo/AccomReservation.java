package com.kh.project.model.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccomReservation {

    private int reservationId; 
    private int memCode; 
    private int accomCode;
    private String accomName;
    @DateTimeFormat(pattern = "yyyyMMdd")
    private Date startDate;
    @DateTimeFormat(pattern = "yyyyMMdd")
    private Date endDate;
    private int seats; 
}
