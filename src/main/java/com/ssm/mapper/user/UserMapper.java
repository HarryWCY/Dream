package com.ssm.mapper.user;

import com.ssm.entity.user.User;
/**
 * 用户持久层接口
 * @author Harry
 * @version 1.0
 * 本类UserMapper.java是描述
 */
public interface UserMapper {
	/**
	 * 根据id查找用户
	 * @param id
	 * @return
	 */
	User selectUserById(Integer id);
	/**
	 * 根据用户名查找用户
	 * @param userName
	 * @return
	 */
	User selectUserByUserName(String userName);
	/**
	 * 插入用户信息
	 * @param u
	 * @return
	 */
	Integer insertUser(User u);
	/**
	 * 修改用户信息
	 * @param u
	 * @return
	 */
	Integer updateUser(User u);
}
