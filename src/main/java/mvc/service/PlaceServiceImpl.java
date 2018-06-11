package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.PlaceDao;
import mvc.dto.Place;

@Service
public class PlaceServiceImpl implements PlaceService{

	@Autowired PlaceDao pla;
	//장소 정보 등록
	@Override
	public boolean placeInsert(Place place) {
		// TODO Auto-generated method stub
		return pla.placeInsert(place);
	}
	
	//장소 목록 가져오기 
	@Override
	public List<Place> getPlaceList() {
		
		return pla.getPlaceList();
	}

	//placeView
	@Override
	public Place placeView(Place plaview) {
		return pla.selectPlaceByPlaceNo(plaview);
	}

}
