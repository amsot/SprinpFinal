package admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.GroupDao;
import admin.dto.Group;
import admin.util.Paging;

@Service
public class GroupServiceImpl implements GroupService {

	@Autowired GroupDao groupDao;
	
	@Override
	public int getGroupTotal(Paging search) {
		return groupDao.getGroupTotal(search);
	}

	@Override
	public List getGroupPagingList(Paging paging) {
		return groupDao.getGroupPagingList(paging);
	}

	@Override
	public Group getGroupDetail(Group group) {
		Group result = groupDao.getGroupStopDetail(group);
		if(result==null) {
			return groupDao.getGroupDetail(group);
		}
		return result;
	}

	@Override
	public List getMeetList(Group group) {
		return groupDao.getMeetList(group);
	}

	@Override
	public Boolean deleteGroup(Group group) {
		groupDao.deleteMeeting(group);
		return groupDao.deleteGroup(group);
		
	}

	@Override
	public void blockGroup(Group group) {
		groupDao.blockGroup(group);
		
	}

	@Override
	public void noBlockGroup(Group group) {
		groupDao.noBlockGroup(group);
		
	}


}
