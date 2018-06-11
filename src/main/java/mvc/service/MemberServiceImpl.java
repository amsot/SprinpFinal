package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MemberDao;
import mvc.dto.Writer;

@Service
public class MemberServiceImpl implements MemberService{

	//의존성 주입 
	@Autowired MemberDao m;
	
	//회원가입 처리 
	@Override
	public boolean join(Writer writer) {
	return m.join(writer);
		
	}

	//로그인 한명 정보 가져오기 
	@Override
	public boolean getOneUser(Writer writer) {
		if(m.getOneUser(writer)==1) {
			return true;
		}
		
		return false;
	}

	
	
}
