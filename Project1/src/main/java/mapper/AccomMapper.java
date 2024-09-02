package mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Accom;
import com.kh.project.model.vo.AccomReservation;

@Mapper
public interface AccomMapper {
	
    List<AccomReservation> reservationList();
    void insertReservation(AccomReservation vo);
    void updateStartDate(AccomReservation vo);
    void updateEndDate(AccomReservation vo);
    void deleteReservation(int reservationId);
    List<Accom> AllAccom();
}
