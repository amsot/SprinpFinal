package admin.dao;

import java.util.List;

import admin.dto.Company;
import admin.dto.Place;
import admin.util.Paging;

public interface CompanyDao {

	public boolean RegisterCom(Company company);

	public int getNoCompanyTotal();

	public List getNoCompanyPagingList(Paging paging);

	public boolean companyApply(Company company);

	public int getCompanyTotal(Paging search);

	public List getCompanyPagingList(Paging paging);

	public Company getCompanyDetail(Company company);

	public boolean deleteCompanyList(Company company);

	public void companyBlack(Company company);
	
	public void companyNoBlack(Company company);

	public int getPlaceTotal(Paging search);

	public List getPlacePagingList(Paging paging);

	public List getCompanyPlace(Company company);

	public Company getCompanyDetail2(Place place);

}
