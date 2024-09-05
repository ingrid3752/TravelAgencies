package mapper;

import java.util.List;



import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.AccomReservation;

@Mapper
public interface AccomMapper {
	
    List<AccomReservation> ReservationList(int memCode);
    void insertReservation(AccomReservation vo);
    void updateStartDate(AccomReservation vo);
    void updateEndDate(AccomReservation vo);
    void deleteReservation(int reservationId, int memCode);
}
