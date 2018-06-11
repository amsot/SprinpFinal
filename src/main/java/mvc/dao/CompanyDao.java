package mvc.dao;

import mvc.dto.Company;

public interface CompanyDao {

	//회원가입
	public boolean join(Company company);
	
	//아이디 중복확인
	public int idCheck(Company company);

	//회원정보 가져오기 
	public int getOneCompany(Company company);
}
