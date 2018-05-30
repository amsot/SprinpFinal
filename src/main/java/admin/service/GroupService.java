package admin.service;

import java.util.List;

import admin.dto.Group;
import admin.util.Paging;

public interface GroupService {

	/**
	 * 
	 * @param search 
	 * @return int
	 * 모임 총 갯수 가져오기
	 */
	public int getGroupTotal(Paging search);
	
	/**
	 * 
	 * @param paging
	 * @return list
	 * 모임 리스트 페이징 처리
	 */
	public List getGroupPagingList(Paging paging);

	/**
	 * 
	 * @param group
	 * @return group
	 *  모임 자세히 가져오기
	 */
	public Group getGroupDetail(Group group);

	/**
	 * 
	 * @param group
	 * @return list
	 * 해당 모임의 정모들을 가져오기
	 */
	public List getMeetList(Group group);

	/**
	 * 
	 * @param group
	 * 해당 모임 삭제하기
	 */
	public Boolean deleteGroup(Group group);

	/**
	 * 
	 * @param group
	 * 해당 모임 제재하기
	 */
	public void blockGroup(Group group);

	/**
	 * 
	 * @param group
	 * 해당 모임 제제 풀기
	 */
	public void noBlockGroup(Group group);


}
