package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Groups;
import mvc.dto.Member;

@Repository
public interface MemberDAO {

	public List getMemberList(Groups group);
	
	public Member getMemberInfo();
	
	public int isMember(Member member);
	
	public void memberRegistration(Member member);
	
	public void memberSecession(Member member);
	
}
