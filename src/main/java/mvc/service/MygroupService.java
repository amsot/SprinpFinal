package mvc.service;

import java.util.List;

import mvc.dto.Mygroup;

public interface MygroupService {
	
	public void groupRegistration(Mygroup mygroup);
	
	public List getList(Mygroup mygroup);
	
	public Mygroup getViewMygroup(Mygroup mygroup);
	
	public void mygroupDelete(Mygroup mygroup);

}
