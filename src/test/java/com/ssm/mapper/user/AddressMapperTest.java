package com.ssm.mapper.user;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;
import com.ssm.mapper.user.AddressMapper;

public class AddressMapperTest {
	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testinsertAddRess() {
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		Address address = new Address();
		User user = new User();
		user.setId(4);
		address.setUserName("李二");
		address.setDetail("安徽芜湖");
		address.setPostCode("12346");
		address.setPhone("123456789");
		address.setDefaul(1);
		address.setUser(user);
		addressMapper.insertAddress(address);
	}

	@Test
	public void testdeleteAddressById() {
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		Address address = new Address();
		address.setId(1);
		addressMapper.deleteAddressById(address);
	}

	@Test
	public void testupdateAddress() {
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		Address address = new Address();
		address.setId(22);
		address.setPhone("123");
		addressMapper.updateAddress(address);
	}
	@Test
	public void testselectAllByUserId(){
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		List<Address> address = addressMapper.selectAllByUserId(4);
		address.forEach(System.out::println);
	}
	
	@Test
	public void testUpdateDefaultByNotId(){
		AddressMapper addressMapper = (AddressMapper) context.getBean("addressMapper");
		Address address = new Address();
		User user = new User();
		user.setId(4);
		address.setUser(user);
		address.setId(23);
		addressMapper.updateDefaultByNotId(address);
	}
}
