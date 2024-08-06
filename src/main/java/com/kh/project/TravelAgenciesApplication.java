package com.kh.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.kh.TravelAgencies.mapper")
public class TravelAgenciesApplication {

	public static void main(String[] args) {
		SpringApplication.run(TravelAgenciesApplication.class, args);
	}

}
