package mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Review;
import com.kh.project.model.vo.ReviewEntity;

@Mapper
public interface ReviewMapper {
	
	/*
	 * 리뷰 작성
	 * 엔티티별로 리뷰 조회
	 * 회원별 작성 리뷰 조회
	 * 엔티티별 평균 평점 조회
	 * */
	
	void insertReview(Review review);
	List<Review> getReviewByEntity(ReviewEntity entity);
	List<Review> getReviewByMember(int memCode);
	Double getAverageRatingByEntity(ReviewEntity entity);
	
}
