package com.kh.project.model.vo;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class StadiumReservation {
	private int reservationId;
	private int memId;
	private int stadiumCode;
	private String stadiumName;
	private LocalDateTime startDate;
	private LocalDateTime endDate;
	private int seats;
}
