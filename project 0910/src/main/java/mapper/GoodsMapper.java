package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Goods;

@Mapper
public interface GoodsMapper {
	
	List<Goods> getPersonalizedRecommendations(Goods goods);
	List<Goods> getSimilarGoods(Goods goods);
}
