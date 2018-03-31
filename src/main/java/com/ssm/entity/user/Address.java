package com.ssm.entity.user;

import java.io.Serializable;
/**
 * 地址实体类
 * @author Harry
 * @version 1.0
 * 本类Address.java是描述
 */
public class Address implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4952587682169898294L;
	private Integer id;
	private String userName;
	private String detail;
	private String postCode;
	private String phone;
	private Integer defaul;
	
	
	private User user;


	/**
	 * 
	 */
	public Address() {
	}


	/**
	 * @param id
	 * @param username
	 * @param detail
	 * @param postcode
	 * @param phone
	 * @param defaul
	 */
	public Address(Integer id, String username, String detail, String postcode, String phone, Integer defaul) {
		this.id = id;
		this.userName = username;
		this.detail = detail;
		this.postCode = postcode;
		this.phone = phone;
		this.defaul = defaul;
	}


	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}


	/**
	 * @return the username
	 */
	public String getUserName() {
		return userName;
	}


	/**
	 * @param username the username to set
	 */
	public void setUserName(String username) {
		this.userName = username;
	}


	/**
	 * @return the detail
	 */
	public String getDetail() {
		return detail;
	}


	/**
	 * @param detail the detail to set
	 */
	public void setDetail(String detail) {
		this.detail = detail;
	}


	/**
	 * @return the postcode
	 */
	public String getPostCode() {
		return postCode;
	}


	/**
	 * @param postcode the postcode to set
	 */
	public void setPostCode(String postcode) {
		this.postCode = postcode;
	}


	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}


	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}


	/**
	 * @return the defaul
	 */
	public Integer getDefaul() {
		return defaul;
	}


	/**
	 * @param defaul the defaul to set
	 */
	public void setDefaul(Integer defaul) {
		this.defaul = defaul;
	}


	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}


	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Address [id=").append(id).append(", userName=").append(userName).append(", detail=")
				.append(detail).append(", postCode=").append(postCode).append(", phone=").append(phone)
				.append(", defaul=").append(defaul).append(", user=").append(user).append("]");
		return builder.toString();
	}
	
}
