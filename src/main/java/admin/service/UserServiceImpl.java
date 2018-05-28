package admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.UserDao;
import admin.dto.User;
import admin.util.Paging;

@Service
public class UserServiceImpl implements UserService {

	@Autowired UserDao userDao;
	
	@Override
	public List selectAllUser() {
		return userDao.selectAllUser();
	}

	@Override
	public User getDetail(User user) {
		return userDao.getDetail(user);
	}

	@Override
	public boolean deleteUser(User user) {
		return userDao.deleteUser(user);
	}

	@Override
	public int getUserTotal() {
		return userDao.getUserTotal();
	}

	@Override
	public List getUserPagingList(Paging paging) {
		return userDao.getUserPagingList(paging);
	}

	@Override
	public void changeStopUser(User user) {
		user = userDao.getDetail(user);
		if(user.getU_black()==1) {
			userDao.stopUser(user);
		}else {
			userDao.noStop(user);
		}
		
		
	}

	@Override
	public List getBlackList(Paging paging) {
		return userDao.getBlackList(paging);
	}

	@Override
	public int getBlackTotal() {
		return userDao.getBlackTotal();
	}

}
