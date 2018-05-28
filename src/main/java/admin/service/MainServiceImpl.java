package admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.MainDao;
import admin.dto.Board;
import admin.util.Paging;

@Service
public class MainServiceImpl implements MainService {

	@Autowired MainDao mainDao;
	@Override
	public Boolean mainNoticeInsert(Board board) {
		return mainDao.mainNoticeInsert(board);
		
	}

	@Override
	public void mainNoticeDelete(Board board) {
		mainDao.mainNoticeDelete(board);
		
	}

	@Override
	public void mainNoticeModify(Board board) {
		mainDao.mainNoticeModify(board);
	}

	@Override
	public int getNoticeTotal() {
		return mainDao.getNoticeTotal();
	}

	@Override
	public List getPagingNoticeList(Paging paging) {
		return mainDao.getPagingNoticeList(paging);
	}

	@Override
	public Board getNoticeDetail(Board board) {
		return mainDao.getNoticeDetail(board);
	}

}
