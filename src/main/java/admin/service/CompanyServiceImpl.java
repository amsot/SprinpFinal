package admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.CompanyDao;
import admin.dto.Company;
import admin.dto.Place;
import admin.util.Paging;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired CompanyDao companyDao;
	
	@Override
	public boolean RegisterCom(Company company) {
		return companyDao.RegisterCom(company);
	}

	@Override
	public int getNoCompanyTotal() {
		return companyDao.getNoCompanyTotal();
	}

	@Override
	public List getNoCompanyPagingList(Paging paging) {
		return companyDao.getNoCompanyPagingList(paging);
	}

	@Override
	public boolean companyApply(Company company) {
		return companyDao.companyApply(company);
	}

	@Override
	public int getCompanyTotal() {
		return companyDao.getCompanyTotal();
	}

	@Override
	public List getCompanyPagingList(Paging paging) {
		return companyDao.getCompanyPagingList(paging);
	}

	@Override
	public Company getCompanyDetail(Company company) {
		return companyDao.getCompanyDetail(company);
	}

	@Override
	public boolean deleteCompanyList(Company company) {
		return companyDao.deleteCompanyList(company);
	}

	@Override
	public void companyBlack(Company company) {
		company = companyDao.getCompanyDetail(company);
		System.out.println("ป๓ลย : "+company);
		if(company.getCom_block()==1) {
			companyDao.companyBlack(company);
		}else {
			companyDao.companyNoBlack(company);
		}
		
		
	}
	@Override
	public int getPlaceTotal() {
		return companyDao.getPlaceTotal();
	}

	@Override
	public List getPlacePagingList(Paging paging) {
		return companyDao.getPlacePagingList(paging);
	}

	@Override
	public List getCompanyPlace(Company company) {
		return companyDao.getCompanyPlace(company);
	}

	@Override
	public Company getCompanyDetail2(Place place) {
		return companyDao.getCompanyDetail2(place);
	}

}
