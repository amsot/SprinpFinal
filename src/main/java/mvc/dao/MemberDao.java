package mvc.dao;

import mvc.dto.Writer;

public interface MemberDao {

	//회원가입
	public boolean join(Writer writer);
	
	//로그인 한명 정보 가져오기 
	public int getOneUser(Writer writer);
}
