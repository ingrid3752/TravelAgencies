package com.kh.project.model.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class StadiumReservation {
	private int reservationId;
	private Integer memCode;
	private Integer stadiumCode;
	private String stadiumName;
	private String stadiumEvent;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date stadiumDate;
	private int seats;
}
