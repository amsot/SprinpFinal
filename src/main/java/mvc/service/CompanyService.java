package mvc.service;

import mvc.dto.Company;

public interface CompanyService {

	boolean join(Company company);
	
	boolean idCheck(Company company);
	
	//회원정보 가져오기 
	public boolean getOneCompany(Company company);

	//회원정보 수정시 정보 가져오기 
	public Company getCompanyInfo(Company company);

	//회원정보 수정
	public void comupdate(Company company);
	
	

}
