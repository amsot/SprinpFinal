package admin.service;

import java.util.List;

import admin.dto.Company;
import admin.dto.Place;
import admin.util.Paging;

public interface CompanyService {

	/**
	 * 
	 * @param company
	 * @return boolean
	 *  제휴 업체 등록
	 */
	public boolean RegisterCom(Company company);

	/**
	 * 
	 * @return int
	 *  제휴 업체 신청 목록 조회
	 */
	public int getNoCompanyTotal();
	
	/**
	 * 
	 * @param paging
	 * @return List
	 *  제휴 업체 신청 목록 페이징
	 */
	public List getNoCompanyPagingList(Paging paging);

	/**
	 * 
	 * @param company
	 * 제휴 업체 승인
	 */
	public boolean companyApply(Company company);

	/**
	 * 
	 * @return
	 * 제휴 업체 목록 가져오기
	 */
	public int getCompanyTotal();
	
	/**
	 * 
	 * @param paging
	 * @return List
	 * 제휴 업체 목록 페이징
	 */
	public List getCompanyPagingList(Paging paging);

	/**
	 * 
	 * @param company
	 * @return company
	 * 제휴 업체 상세 페이지
	 *
	 */
	public Company getCompanyDetail(Company company);

	/**
	 * 
	 * @param company
	 * @return boolean
	 * 제휴 업체 삭제하기
	 */
	public boolean deleteCompanyList(Company company);

	/**
	 * 
	 * @param company
	 * 제휴 업체 제재
	 */
	public void companyBlack(Company company);

	/**
	 * 
	 * @return int
	 * 해당 제휴 업체 장소 갯수 
	 */
	public int getPlaceTotal();

	/**
	 * 
	 * @param paging
	 * @return List
	 * 해당 제휴 업체 페이징
	 */
	public List getPlacePagingList(Paging paging);

	/**
	 * 
	 * @param company
	 * @return List
	 * 해당 제휴 업체의 장소들을 불러옴.
	 */
	public List getCompanyPlace(Company company);

	/**
	 * 
	 * @param place
	 * @return company
	 * 파라미터를 place로 갖는 제휴업체를 자세히 
	 */
	public Company getCompanyDetail2(Place place);

}
