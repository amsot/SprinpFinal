package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.ReserDao;
import mvc.dto.Place;
import mvc.dto.Reser;

@Service
public class ReserServiceImpl implements ReserService{

	@Autowired ReserDao res;
	//예약된 목록 가져오기 
	@Override
	public List<Reser> getReserList() {
		// TODO Auto-generated method stub
		return res.getReserList();
	}

}
