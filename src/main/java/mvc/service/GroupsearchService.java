package mvc.service;

import java.util.List;

import mvc.dto.Mygroup;

public interface GroupsearchService {
	//카테고리 검색
	public List searchList(Mygroup mygroup);
	//main 카테고리 클릭 시 list 보이기
	public List selectAll(Mygroup mygroup);
	//키워드 검색
	public List keyword(Mygroup mygroup);
	
}
