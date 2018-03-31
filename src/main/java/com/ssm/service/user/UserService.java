package com.ssm.service.user;

import java.util.List;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;
/**
 * 用户服务层接口
 * @author Harry
 * @version 1.0
 * 本类UserService.java是描述
 */
public interface UserService {
	/**
	 * 根据用户名查找用户
	 * @param username
	 * @return
	 */
	User queryUserByUserName(String username);
	/**
	 * 登录
	 * @param name
	 * @param pwd
	 * @return
	 */
	String login(String name, String pwd); 
	/**
	 * 注册
	 * @param user
	 * @return
	 */
	String register(User user);
	/**
	 * 判断用户名已存在
	 * @param name
	 * @return
	 */
	boolean validate(String name);
	/**
	 * 修改密码
	 * @param user
	 * @return
	 */
	String updatepassword(User user);
	/**
	 * 添加地址
	 * @param a
	 * @return
	 */
	String addAddress(Address a);
	/**
	 * 删除地址
	 * @param a
	 */
	void removeAddress(Address a);
	/**
	 * 修改地址信息
	 * @param a
	 * @return
	 */
	String updateAddress(Address a);
	/**
	 * 根据用户查询所有地址信息
	 * @param u
	 * @return
	 */
	List<Address> queryAddressByUser(User u);
	/**
	 * 根据id查询地址信息
	 * @param id
	 * @return
	 */
	Address queryAddressById(Integer id);
	/**
	 * 修改地址为默认地址
	 * @param address
	 */
	void updateDefault(Address address);
}
