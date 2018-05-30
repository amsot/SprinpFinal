package admin.service;

import java.util.List;

import admin.dto.User;
import admin.util.Paging;

public interface UserService {
	
	/**
	 * 
	 * @return List 
	 * 모든 User 객체 가져옴
	 */
	public List selectAllUser();

	/**
	 * 
	 * @param user
	 * @return user
	 * USER 객체 자세히 가져옴
	 */
	public User getDetail(User user);
	
	/**
	 * 
	 * @param user
	 * @return boolean
	 * USER 계정 삭제함
	 */

	public boolean deleteUser(User user);

	/**
	 * 
	 * @param search 
	 * @return int
	 * USER의 총 갯수를 구함
	 */
	public int getUserTotal(Paging search);
	
	/**
	 * 
	 * @return List
	 * USER를 페이징
	 */
	public List getUserPagingList(Paging paging);

	/**
	 * 
	 * @param user
	 * USER 계정 제재
	 */
	public void changeStopUser(User user);

	/**
	 * 
	 * @param paging 
	 * @return List
	 * 제재된 사용자 불러오기
	 */
	public List getBlackList(Paging paging);

	/**
	 * 
	 * @param search 
	 * @return int
	 * 제재된 사용자의 수
	 */
	public int getBlackTotal(Paging search);
}
