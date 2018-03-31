package com.ssm.vo;

import com.ssm.entity.cater.Cater;

public class CaterVo {
	
	private Cater cater;
	
	private int currentPage;//当前页
	
	private int pageCount;//每页记录数

	/**
	 * 
	 */
	public CaterVo() {
	}

	/**
	 * @param cater
	 * @param currentPage
	 * @param pageCount
	 */
	public CaterVo(Cater cater, int currentPage, int pageCount) {
		this.cater = cater;
		this.currentPage = currentPage;
		this.pageCount = pageCount;
	}

	/**
	 * @return the cater
	 */
	public Cater getCater() {
		return cater;
	}

	/**
	 * @param cater the cater to set
	 */
	public void setCater(Cater cater) {
		this.cater = cater;
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
