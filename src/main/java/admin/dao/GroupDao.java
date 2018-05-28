package admin.dao;

import java.util.List;

import admin.dto.Group;
import admin.util.Paging;

public interface GroupDao {

	public int getGroupTotal();

	public List getGroupPagingList(Paging paging);

	public Group getGroupDetail(Group group);

	public List getMeetList(Group group);

	public Boolean deleteGroup(Group group);

	public Boolean deleteMeeting(Group group);

	public void blockGroup(Group group);
	
	public Group getGroupStopDetail(Group group);

	public void noBlockGroup(Group group);


}
