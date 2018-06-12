package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.GroupDAO;
import mvc.dao.MemberDAO;
import mvc.dto.Groups;
import mvc.dto.Member;

@Service
public class GroupServiceImpl implements GroupService{

	@Autowired GroupDAO groupDao;
	@Autowired MemberDAO memberDao;
	

	@Override
	public List getGroupList() {
		return groupDao.getGroupList();
	}
	
	@Override
	public Groups getGroupInfo(Groups group) {
		return groupDao.getGroupInfo(group);
	}
	
	@Override
	public List getMemberList(Groups group) {
		return memberDao.getMemberList(group);
	}
	@Override
	public int isMember(Member member) {
		return memberDao.isMember(member);
	}

	@Override
	public void memberSecession(Member member) {
		memberDao.memberSecession(member);
	}
	
	@Override
	public void memberRegistration(Member member) {
		memberDao.memberRegistration(member);
	}

	@Override
	public void createGroup() {
		groupDao.createGroup();
	}

	@Override
	public void deleteGroup() {
		groupDao.deleteGroup();
	}

}
