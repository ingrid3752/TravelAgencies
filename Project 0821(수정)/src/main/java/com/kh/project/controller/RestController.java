package com.kh.project.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.MealHistory;
import com.kh.project.model.vo.RecommendedMenu;
import com.kh.project.service.RestService;

@Controller
@RequestMapping("/rest")
public class RestController {
	
	@Autowired
    private RestService restService;

	// 식사 기록 추가
    @PostMapping("/addMealHistory")
    @ResponseBody
    public void addMealHistory(@RequestBody MealHistory mealHistory) {
        restService.addMealHistory(mealHistory);
    }

    // 맞춤형 메뉴 추천
    @GetMapping("/recommendMenu")
    @ResponseBody
    public List<RecommendedMenu> getPersonalizedMenuRecommendations(int memCode) {
        return restService.getPersonalizedMenuRecommendations(memCode);
    }
    
}