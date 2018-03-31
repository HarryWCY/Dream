package com.ssm.mapper.specialty;


import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.specialty.Specialty;
import com.ssm.mapper.specialty.SpecialtyMapper;
import com.ssm.vo.SpecialtyVo;


public class SpecialtyMapperTest {

ApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testSelectAll() {
		SpecialtyMapper specialtyMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		specialtyMapper.selectAll().forEach(System.out::println);
		
	}
	
	@Test
	public void testSelectSpecialtyById() {
		SpecialtyMapper specialtyMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		System.out.println(specialtyMapper.selectSpecialtyById(1)); 
	}
	
	@Test
	public void testSelectSpecialtysByCondition() {
		SpecialtyMapper specialtyMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		SpecialtyVo specialtyVo = new SpecialtyVo ();
		Specialty specialty  = new Specialty();
		specialtyVo.setSpecialty(specialty);
		specialtyMapper.selectSpecialtysByCondition(specialtyVo).forEach(System.out::println);;
		
	}
	
	@Test
	public void testselectListByPage() {
		SpecialtyMapper specialtyMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		SpecialtyVo specialtyVo = new SpecialtyVo ();
		Specialty specialty = new Specialty();
		specialtyVo.setSpecialty(specialty);
		specialtyVo.setCurrentPage(1);
		specialtyVo.setPageCount(8);
		List<Specialty> specialtys = specialtyMapper.selectListByPage(specialtyVo);
		specialtys.forEach(System.out::println);
	}
	
	@Test
	public void selectCountByCondition() {
		SpecialtyMapper specialtyMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		SpecialtyVo specialtyVo = new SpecialtyVo ();
		int count = specialtyMapper.selectCountByCondition(specialtyVo);
		System.out.println(count);
	}
	
	@Test
	public void selectSpecialtysByOrigin() {
		SpecialtyMapper specialtyMapper = (SpecialtyMapper) context.getBean("specialtyMapper");
		specialtyMapper.selectSpecialtysByOrigin("江苏").forEach(System.out::println);
	}
}
