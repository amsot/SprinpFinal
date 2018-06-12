package mvc.service;

import java.util.List;

import mvc.dto.Groups;
import mvc.dto.Member;


public interface GroupService {
	
	public List getGroupList();
	
	public Groups getGroupInfo(Groups group);
	
	public List getMemberList(Groups group);
	
	public int isMember(Member member);
	
	public void createGroup();
	
	public void deleteGroup();
	
	public void memberRegistration(Member member);
	
	public void memberSecession(Member member);

}
