package com.ssm.entity.user;

import java.io.Serializable;
import java.util.List;
import com.ssm.entity.route.RouteOrder;
/**
 * 用户实体类
 * @author Harry
 * @version 1.0
 * 本类User.java是描述
 */
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7759561668624872172L;
	private Integer id;
	private String userName;
	private String realName;
	private String password;
	private String phone;
	private List<RouteOrder> routeOrders;
	/**
	 * 
	 */
	public User() {
	}
	/**
	 * @param id
	 * @param userName
	 * @param realName
	 * @param password
	 * @param phone
	 */
	public User(Integer id, String userName, String realName, String password, String phone) {
		this.id = id;
		this.userName = userName;
		this.realName = realName;
		this.password = password;
		this.phone = phone;
	}
	
	
	/**
	 * @param id
	 * @param userName
	 * @param realName
	 * @param password
	 * @param phone
	 * @param routeOrders
	 */
	public User(Integer id, String userName, String realName, String password, String phone,
			List<RouteOrder> routeOrders) {
		this.id = id;
		this.userName = userName;
		this.realName = realName;
		this.password = password;
		this.phone = phone;
		this.routeOrders = routeOrders;
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
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the realName
	 */
	public String getRealName() {
		return realName;
	}
	/**
	 * @param realName the realName to set
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
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
	 * @return the routeOrders
	 */
	public List<RouteOrder> getRouteOrders() {
		return routeOrders;
	}
	/**
	 * @param routeOrders the routeOrders to set
	 */
	public void setRouteOrders(List<RouteOrder> routeOrders) {
		this.routeOrders = routeOrders;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [id=").append(id).append(", userName=").append(userName).append(", realName=")
				.append(realName).append(", password=").append(password).append(", phone=").append(phone)
				.append(", routeOrders=").append(routeOrders).append("]");
		return builder.toString();
	}
	
	
}