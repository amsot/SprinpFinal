package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Groups;

@Repository
public interface GroupDAO {
		
	public List getGroupList();
	
	public Groups getGroupInfo(Groups group);

	public void createGroup();
	
	public void deleteGroup();
	
}
