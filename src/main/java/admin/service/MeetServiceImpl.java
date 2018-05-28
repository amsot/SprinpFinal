package admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.MeetDao;
import admin.dto.Meet;
import admin.util.Paging;

@Service
public class MeetServiceImpl implements MeetService{

	@Autowired MeetDao meetDao;
	
	@Override
	public int getMeetReservTotal() {
		return meetDao.getMeetReservTotal();
	}

	@Override
	public List getMeetReservPagingList(Paging paging) {
		return meetDao.getMeetReservPagingList(paging);
	}

	@Override
	public Meet getMeetDetail(Meet meet) {
		return meetDao.getMeetDetail(meet);
	}

	@Override
	public List getEndMeetList(Paging paging) {
		return meetDao.getEndMeetList(paging);
	}

	@Override
	public int getEndMeetCount() {
		return meetDao.getEndMeetCount();
	}

	@Override
	public void updateMeetList() {
		meetDao.updateMeetList();
		
	}

	@Override
	public boolean meetDelete(Meet meet) {
		return meetDao.meetDelete(meet);
	}

}
