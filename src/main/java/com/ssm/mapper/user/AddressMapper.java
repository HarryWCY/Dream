package com.ssm.mapper.user;

import java.util.List;

import com.ssm.entity.user.Address;
/**
 * 地址持久层接口
 * @author Harry
 * @version 1.0
 * 本类AddressMapper.java是描述
 */
public interface AddressMapper {
	/**
	 * 插入地址信息
	 * @param address
	 */
	void insertAddress(Address address);
	/**
	 * 修改地址信息
	 * @param address
	 * @return
	 */
	Integer updateAddress(Address address);
	/**
	 * 根据id删除地址信息
	 * @param address
	 */
	void deleteAddressById(Address address);
	/**
	 * 根据用户id查找地址信息
	 * @param user_id
	 * @return
	 */
	List<Address> selectAllByUserId(Integer user_id);
	/**
	 * 根据id查找地址信息
	 * @param id
	 * @return
	 */
	Address selectAddressById(Integer id);
	/**
	 * 修改其他地址为非默认地址
	 * @param address
	 * @return
	 */
	Integer updateDefaultByNotId(Address address);
}
