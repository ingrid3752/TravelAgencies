package com.kh.project.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.Goods;
import com.kh.project.service.GoodsService;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	// 개인별 추천 기능
    @GetMapping("/recommendations")
    @ResponseBody
    public List<Goods> getPersonalizedRecommendations(int memId) {
        return goodsService.getPersonalizedRecommendations(memId);
    }

    // 유사한 상품 추천 기능
    @GetMapping("/similar")
    @ResponseBody
    public List<Goods> getSimilarGoods(int goodsCode) {
        return goodsService.getSimilarGoods(goodsCode);
    }
}
