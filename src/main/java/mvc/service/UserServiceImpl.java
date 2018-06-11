package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.UserDao;
import mvc.dto.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired UserDao UserDao;
	
	@Override
	public boolean join(User user) {
		// 중복검사
		int cnt = UserDao.selectCntById(user.getU_id());
		if (cnt > 0)
			return false;

		// 삽입 - 회원가입
		UserDao.insertUser(user);

		// 회원가입 확인
		cnt = UserDao.selectCntById(user.getU_id());
		if (cnt > 0)
			return true;

		return false;
	}

	@Override
	public boolean Login(User user) {
int chk = UserDao.login(user);
		
		if(chk > 0)	return true;
		
		else return false;
	}

	@Override
	public User getUser(User user) {
		return UserDao.selectUserById(user);
	}

	@Override
	public User getUsernick(User user) {
		return UserDao.selectUserByNick(user);
	}

	@Override
	public void editUserProc(User user) {
		UserDao.editUser(user);
	}

	@Override
	public void deleteUser(User user) {
		UserDao.deleteUser(user);
	}

	@Override
	public boolean idCheck(User user) {
		if(UserDao.idCheck(user)>0) {
			return false;
		}else {
			return true;
		}
	}

}
