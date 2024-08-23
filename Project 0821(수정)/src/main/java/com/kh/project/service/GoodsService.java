package com.kh.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Goods;

import mapper.GoodsMapper;

@Service
public class GoodsService {
	
	@Autowired
	private GoodsMapper goodsMapper;
	
	// 개인별 추천 기능
    public List<Goods> getPersonalizedRecommendations(int memCode) {
        Goods goods = new Goods();
        goods.setMemCode(memCode);
        return goodsMapper.getPersonalizedRecommendations(goods);
    }

    // 유사한 상품 추천 기능
    public List<Goods> getSimilarGoods(int goodsCode) {
        Goods goods = new Goods();
        goods.setGoodsCode(goodsCode);
        return goodsMapper.getSimilarGoods(goods);
    }
}