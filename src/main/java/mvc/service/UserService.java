package mvc.service;

import mvc.dto.User;

public interface UserService {

	public boolean join(User user);
	
	public boolean Login(User user);
	
	public User getUser(User user);
	
//	public User getUserid(String id);
	
	public User getUsernick(User user);

	public void editUserProc(User user);
	
	public void deleteUser(User user);
	
	public boolean idCheck(User user);

}
