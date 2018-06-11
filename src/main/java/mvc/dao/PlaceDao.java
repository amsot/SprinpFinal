package mvc.dao;

import java.util.List;

import mvc.dto.Place;

public interface PlaceDao {

	//장소 정보 등록
	public boolean placeInsert(Place place);
	
	//장소 목록 가져오기 
	public List getPlaceList();
	
	//장소 상세보기 
	public Place selectPlaceByPlaceNo(Place plaview);
}
