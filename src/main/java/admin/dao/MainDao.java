package admin.dao;

import java.util.List;

import admin.dto.Board;
import admin.util.Paging;

public interface MainDao {

	public Boolean mainNoticeInsert(Board board);
	
	public void mainNoticeDelete(Board board);
	
	public void mainNoticeModify(Board board);

	public int getNoticeTotal();

	public List getPagingNoticeList(Paging paging);

	public Board getNoticeDetail(Board board);
}
