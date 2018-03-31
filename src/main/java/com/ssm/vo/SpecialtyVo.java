package com.ssm.vo;

import com.ssm.entity.specialty.Specialty;



public class SpecialtyVo {

	private Specialty specialty;

	private int currentPage; // 当前页

	private int pageCount; // 每页显示记录数

	/**
	 * 
	 */
	public SpecialtyVo() {
	}

	/**
	 * @param specialty
	 * @param currentPage
	 * @param pageCount
	 */
	public SpecialtyVo(Specialty specialty, int currentPage, int pageCount) {
		this.specialty = specialty;
		this.currentPage = currentPage;
		this.pageCount = pageCount;
	}

	/**
	 * @return the specialty
	 */
	public Specialty getSpecialty() {
		return specialty;
	}

	/**
	 * @param specialty the specialty to set
	 */
	public void setSpecialty(Specialty specialty) {
		this.specialty = specialty;
	}

	/**
	 * @return the currentPage
	 */
	public int getCurrentPage() {
		return currentPage;
	}

	/**
	 * @param currentPage the currentPage to set
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * @return the pageCount
	 */
	public int getPageCount() {
		return pageCount;
	}

	/**
	 * @param pageCount the pageCount to set
	 */
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
	
}
