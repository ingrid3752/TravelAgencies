package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Accom;
import com.kh.project.model.vo.AccomFavorites;
import com.kh.project.model.vo.AccomReservation;

@Mapper
public interface AccomMapper {
	
    List<Accom> getFavorites(AccomFavorites accomFavorites);
    void insertFavorite(AccomFavorites accomFavorites);
    void deleteFavorite(AccomFavorites accomFavorites);
    void insertReservation(AccomReservation accomReservation);
    List<AccomReservation> getReservationsByMember(AccomReservation accomReservation);
    void updateReservation(AccomReservation accomReservation);
    void deleteReservation(AccomReservation accomReservation);
    
}
