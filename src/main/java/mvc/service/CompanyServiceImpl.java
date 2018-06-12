package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.CompanyDao;
import mvc.dto.Company;

@Service
public class CompanyServiceImpl implements CompanyService{

	@Autowired CompanyDao com;
	
	//회원가입 
	@Override
	public boolean join(Company company) {
		
		return com.join(company);
	}

	@Override
	public boolean idCheck(Company company) {
		if( com.idCheck(company) > 0) {
			return false;
		}else {
			return true;
			
		}
	}

	
	@Override
	public boolean getOneCompany(Company company) {
		if(com.getOneCompany(company) ==1 	) {
			return true;
		}
		return false;
	}


//	//회원정보 수정
	@Override
	public void comupdate(Company company) {
		
		 com.comupdate(company);
		
	}

	@Override
	public Company getCompanyInfo(Company company) {
		
		return com.getCompanyInfo(company);
	
}


}
