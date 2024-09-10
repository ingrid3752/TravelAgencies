package com.kh.project.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.MealHistory;
import com.kh.project.model.vo.RecommendedMenu;

import mapper.RestMapper;

@Service
public class RestService {
	
	@Autowired
	private RestMapper restMapper;
	
	// 식사 기록 삽입
    public void addMealHistory(MealHistory mealHistory) {
        restMapper.insertMealHistory(mealHistory);
    }

    // 맞춤형 메뉴 추천
    public List<RecommendedMenu> getPersonalizedMenuRecommendations(int memCode) {
        return restMapper.getPersonalizedMenuRecommendations(memCode);
    }
    
}
