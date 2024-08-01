package com.kh.project.reservation;

import java.sql.Time;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class RestRes {
	private Date date;
	private Time time;
	private int people;
	private int amount;
	private String pmtAmt;
	private String rest;
	private String memInfo;
}
