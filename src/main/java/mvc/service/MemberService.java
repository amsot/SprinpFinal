package mvc.service;

import mvc.dto.Writer;

public interface MemberService {

	//회원가입 
	public boolean join(Writer writer);
	
	//로그인 회원정보 가져오기 
	public boolean getOneUser(Writer writer);
}
