package com.kh.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("mapper")
public class TravelAgencies2Application {

	public static void main(String[] args) {
		SpringApplication.run(TravelAgencies2Application.class, args);
	}

}
