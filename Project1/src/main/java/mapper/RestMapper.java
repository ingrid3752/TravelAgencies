package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.MealHistory;
import com.kh.project.model.vo.RecommendedMenu;

@Mapper
public interface RestMapper {
	
	void insertMealHistory(MealHistory mealHistory);
	List<RecommendedMenu> getPersonalizedMenuRecommendations(int memCode);
	
}
