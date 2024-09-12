package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.StadiumReservation;

@Mapper
public interface StadiumMapper {
	
	List<StadiumReservation> reservationList(int memCode);
    void insertReservation(StadiumReservation vo);
    void updateDate(StadiumReservation vo);
    void deleteReservation(int reservationId);
    
}
