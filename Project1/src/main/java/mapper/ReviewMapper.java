package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Review;
import com.kh.project.model.vo.ReviewEntity;

@Mapper
public interface ReviewMapper {
	
	void insertReview(Review review);
	List<Review> getReviewByEntity(ReviewEntity entity);
	List<Review> getReviewByMember(int memCode);
	double getAverageRatingByEntity(ReviewEntity entity);
	
}
