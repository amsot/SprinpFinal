package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.PlaceDao;
import mvc.dto.Place;
import mvc.dto.Reser;
import mvc.util.Paging;

@Service
public class PlaceServiceImpl implements PlaceService{
	@Autowired PlaceDao res;
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

	//placeDelete
	@Override
	public void placeDelete(Place place) {
		pla.placedelete(place);
		
	}

	//장소 정보 수정하기 
	@Override
	public void placeUpdate(Place place) {
		pla.placeupdate(place);
		
	}

	//totalCount
	@Override
	public int getTotalCount() {
		
		return pla.getTotal();
	}

	@Override
	public List getPagingList(Paging paging) {
		// TODO Auto-generated method stub
		return pla.paginglistSelect(paging);
	}

	//예약된 목록 가져오기 
	@Override
	public List<Reser> getReserList(Reser reser) {
		// TODO Auto-generated method stub
		return res.getReserList(reser);
	}
	

}
