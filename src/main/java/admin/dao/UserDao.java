package admin.dao;

import java.util.List;

import admin.dto.User;
import admin.util.Paging;

public interface UserDao {
	
	public List selectAllUser();
	
	public User getDetail(User user);
	
	public boolean deleteUser(User user);

	public int getUserTotal(Paging search);

	public List getUserPagingList(Paging paging);

	public void stopUser(User user);

	public void noStop(User user);

	public List getBlackList(Paging paging);

	public int getBlackTotal(Paging search);

}
