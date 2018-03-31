package com.ssm.entity.cater;

import java.io.Serializable;

/**
 * 餐饮住宿实体类
 * @author Harry
 * @version 1.0
 * 本类Cater.java是描述
 */
public class Cater implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3737522325468089842L;
	private Integer id;
	private String caterName;
	private String lv;
	private String phone;
	private String city;
	private String address;
	private Integer type;
	private String image;
	private String detail;
	/**
	 * 
	 */
	public Cater() {
	}
	/**
	 * @param id
	 * @param caterName
	 * @param lv
	 * @param phone
	 * @param city
	 * @param address
	 * @param type
	 * @param image
	 * @param detail
	 */
	public Cater(Integer id, String caterName, String lv, String phone, String city, String address, Integer type,
			String image, String detail) {
		this.id = id;
		this.caterName = caterName;
		this.lv = lv;
		this.phone = phone;
		this.city = city;
		this.address = address;
		this.type = type;
		this.image = image;
		this.detail = detail;
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
	 * @return the caterName
	 */
	public String getCaterName() {
		return caterName;
	}
	/**
	 * @param caterName the caterName to set
	 */
	public void setCaterName(String caterName) {
		this.caterName = caterName;
	}
	/**
	 * @return the lv
	 */
	public String getLv() {
		return lv;
	}
	/**
	 * @param lv the lv to set
	 */
	public void setLv(String lv) {
		this.lv = lv;
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
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the type
	 */
	public Integer getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(Integer type) {
		this.type = type;
	}
	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}
	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Cater [id=").append(id).append(", caterName=").append(caterName).append(", lv=").append(lv)
				.append(", phone=").append(phone).append(", city=").append(city).append(", address=").append(address)
				.append(", type=").append(type).append(", image=").append(image).append(", detail=").append(detail)
				.append("]");
		return builder.toString();
	}
	
	
}
