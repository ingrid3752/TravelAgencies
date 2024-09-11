package com.kh.project.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class StadiumReservation {
	private int reservationId;
	private int memId;
	private int stadiumCode;
	private String stadiumName;
	private Date startDate;
	private Date endDate;
	private int seats;
}
