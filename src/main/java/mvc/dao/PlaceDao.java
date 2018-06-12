package mvc.dao;

import java.util.List;

import mvc.dto.Place;
import mvc.dto.Reser;
import mvc.util.Paging;

public interface PlaceDao {

	//장소 정보 등록
	public boolean placeInsert(Place place);
	
	//장소 목록 가져오기 
	public List getPlaceList();
	
	//장소 상세보기 
	public Place selectPlaceByPlaceNo(Place plaview);

	//장소 정보 삭제하기 
	public void placedelete(Place place);

	//장소 정보 수정하기 
	public void placeupdate(Place place);

	//전체 게시글 수
	public int getTotal();

	public List paginglistSelect(Paging paging);
	
	//예약된 목록 가져오기 
		public List<Reser> getReserList(Reser reser);

	
}
