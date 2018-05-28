package admin.service;

import java.util.List;

import admin.dto.Board;
import admin.util.Paging;

public interface MainService {

	/**
	 * 
	 * @param board
	 * 공지사항 작성
	 */
	public Boolean mainNoticeInsert(Board board);
	public void mainNoticeDelete(Board board);
	
	/**
	 * 
	 * @param board
	 * @return 
	 * 공지사항 수정
	 */
	public void mainNoticeModify(Board board);
	
	/**
	 * 
	 * @return int
	 * 공지사항 글 갯수 가져오기
	 */
	public int getNoticeTotal();
	/**
	 * 
	 * @param paging
	 * @return List
	 *  공지사항 페이징 하기
	 */
	public List getPagingNoticeList(Paging paging);
	/**
	 * 
	 * @param board
	 * @return board
	 *  공지사항 상세 페이지
	 */
	public Board getNoticeDetail(Board board);
}
