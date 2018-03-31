package com.ssm.mapper.user;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.user.User;
import com.ssm.mapper.user.UserMapper;

public class UserMapperTest {
	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testselect() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = mapper.selectUserById(4);
		System.out.println(user);
	}

	@Test
	public void testselectUser() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = mapper.selectUserByUserName("admin");
		System.out.println(user);
	}

	@Test
	public void testinsertUser() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = new User();
		user.setUserName("tom");
		user.setRealName("王二");
		user.setPassword("123456");
		user.setPhone("1234456767");
		mapper.insertUser(user);
	}

	@Test
	public void testupdate() {
		UserMapper mapper = (UserMapper) context.getBean("userMapper");
		User user = new User();
		user.setId(4);
		user.setPassword("123456");
		mapper.updateUser(user);
	}

}
