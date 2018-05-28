package admin.service;

import java.util.List;

import admin.dto.Meet;
import admin.util.Paging;

public interface MeetService {

	/**
	 * 
	 * @return int
	 * 정모 예약 목록 총 갯수 가져옴
	 */
	public int getMeetReservTotal();

	/**
	 * 
	 * @return List
	 *  정모 예약 목록 페이징
	 */
	public List getMeetReservPagingList(Paging paging);

	/**
	 * 
	 * @param meet
	 * @return meet
	 * 정모 예약 자세히 객체 가져옴
	 */
	public Meet getMeetDetail(Meet meet);

	/**
	 * 
	 * @return List
	 * 종료된 정모 목록을 가져옴
	 */
	public List getEndMeetList(Paging paging);

	/**
	 * 
	 * @return int
	 * 종료된 정모 갯수를 가져옴
	 */
	public int getEndMeetCount();

	/**
	 * 정모가 종료된 디비 상태를 바꿔줌 (예약->종료)
	 */
	public void updateMeetList();

	/**
	 * 
	 * @param meet
	 * @return boolean
	 *  정모 삭제
	 */
	public boolean meetDelete(Meet meet);

}
