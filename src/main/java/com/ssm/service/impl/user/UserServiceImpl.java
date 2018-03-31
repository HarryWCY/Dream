package com.ssm.service.impl.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;
import com.ssm.mapper.user.AddressMapper;
import com.ssm.mapper.user.UserMapper;
import com.ssm.service.user.UserService;
/**
 * 用户服务层实现类
 * @author Harry
 * @version 1.0
 * 本类UserServiceImpl.java是描述
 */
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private AddressMapper addressMapper;
	
	@Override
	public User queryUserByUserName(String username) {
		return userMapper.selectUserByUserName(username);
	}
	@Override
	public String login(String name, String pwd) {
		User u = userMapper.selectUserByUserName(name);
		if (u != null) {
			if (pwd.equals(u.getPassword())) {
				return "101"; // 
			} else {
				return "102"; //
			}
		} else {
			return "102"; // 
		}

	}
	@Override
	public String register(User user) {
		if(validate(user.getUserName())==true){
			userMapper.insertUser(user);
			return "101";
		}
			return "102";
	}
	@Override
	public boolean validate(String name) {
		User u = userMapper.selectUserByUserName(name);
		if (u == null) {
			return true;
		}
		return false;
	}
	@Override
	public String updatepassword(User user) {
		userMapper.updateUser(user);
		return "101";
	}
	@Override
	public String addAddress(Address a) {
		a.setDefaul(0);
		addressMapper.insertAddress(a);
		return "101";
	}
	@Override
	public void removeAddress(Address a) {
		addressMapper.deleteAddressById(a);
	}
	@Override
	public String updateAddress(Address a) {
		addressMapper.updateAddress(a);
		return "102";
	}
	@Override
	public List<Address> queryAddressByUser(User u) {
		return addressMapper.selectAllByUserId(u.getId());
	}
	@Override
	public Address queryAddressById(Integer id) {
		return addressMapper.selectAddressById(id);
	}
	@Override
	public void updateDefault(Address address) {
		address.setDefaul(1);
		addressMapper.updateAddress(address);
		addressMapper.updateDefaultByNotId(address);
	}
	
}
