package com.kh.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.kh.project.mapper")
public class TravelAgenciesApplication {

	public static void main(String[] args) {
		SpringApplication.run(TravelAgenciesApplication.class, args);
		
		try {
			Class.forName("com.kh.project.mapper");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("클래스를 찾을 수 없습니다." + e.getMessage());
		}
	}

}
