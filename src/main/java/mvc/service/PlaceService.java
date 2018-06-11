package mvc.service;

import java.util.List;

import mvc.dto.Place;

public interface PlaceService {

	//장소정보 등록하기
	boolean placeInsert(Place place);
	
	//장소목록 가져오기 
	public List<Place> getPlaceList();
	
	//장소 상세보기
	public Place placeView(Place plaview);
}
