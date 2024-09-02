package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.StadiumReservation;

@Mapper
public interface StadiumMapper {
	
	List<StadiumReservation> reservationList();
    void insertReservation(StadiumReservation vo);
    void updateStartDate(StadiumReservation vo);
    void updateEndDate(StadiumReservation vo);
    void deleteReservation(int reservationId);
    
}