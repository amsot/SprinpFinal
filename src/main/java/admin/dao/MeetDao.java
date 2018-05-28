package admin.dao;

import java.util.List;

import admin.dto.Meet;
import admin.util.Paging;

public interface MeetDao {

	public int getMeetReservTotal();

	public List getMeetReservPagingList(Paging paging);

	public Meet getMeetDetail(Meet meet);

	public List getEndMeetList(Paging paging);

	public int getEndMeetCount();

	public void updateMeetList();

	public boolean meetDelete(Meet meet);

}
