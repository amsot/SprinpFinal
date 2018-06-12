package mvc.service;

import java.util.List;

import mvc.dto.Place;
import mvc.dto.Reser;
import mvc.util.Paging;

public interface PlaceService {

	//장소정보 등록하기
	boolean placeInsert(Place place);
	
	//장소목록 가져오기 
	public List<Place> getPlaceList();
	
	//장소 상세보기
	public Place placeView(Place plaview);

	//장소정보 삭제하기 
	public void placeDelete(Place place);

	//장소정보 수정하기 
	public void placeUpdate(Place place);

	//페이징
	int getTotalCount();

	public List getPagingList(Paging paging);

	//예약된 목록 가져오기 
	public List<Reser> getReserList(Reser reser);
	

}
