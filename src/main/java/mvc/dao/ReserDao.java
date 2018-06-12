package mvc.dao;

import java.util.List;

import mvc.dto.Place;
import mvc.dto.Reser;

public interface ReserDao {

	//예약된 목록 가져오기 
	public List<Reser> getReserList();

}
