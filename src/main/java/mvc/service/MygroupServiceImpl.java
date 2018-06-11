package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MygroupDao;
import mvc.dto.Mygroup;

@Service
public class MygroupServiceImpl implements MygroupService{
@Autowired MygroupDao mygroupDao;

@Override
public void groupRegistration(Mygroup mygroup) {
	mygroupDao.groupRegistration(mygroup);
	
}

@Override
public List getList(Mygroup mygroup) {
	return mygroupDao.getList(mygroup);
}

@Override
public Mygroup getViewMygroup(Mygroup mygroup) {
	
	return mygroupDao.getViewMygroup(mygroup);
}

@Override
public void mygroupDelete(Mygroup mygroup) {
	
	mygroupDao.mygroupDelete(mygroup);
}



}
