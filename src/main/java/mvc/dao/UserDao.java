package mvc.dao;

import mvc.dto.User;

public interface UserDao {
	public int login(User user);
	
	public void insertUser(User user);
	
	public int selectCntById(String userId);
	
	public User selectUserById(User user);

	public User selectUserByNick(User user);
	
	public void editUser(User user);
	
	public void deleteUser(User user);
	
	public int idCheck(User user);
}
