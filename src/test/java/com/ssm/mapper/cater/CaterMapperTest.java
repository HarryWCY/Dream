package com.ssm.mapper.cater;



import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssm.entity.cater.Cater;
import com.ssm.vo.CaterVo;

public class CaterMapperTest {
	ApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}
	@Test
	public void testSelectCaterByType() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		caterMapper.selectCaterByType(0).forEach(System.out::println);
	}

	@Test
	public void testSelectCaterById() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		Cater cater = caterMapper.selectCaterById(1);
		System.out.println(cater);
	}

	@Test
	public void testSelectEatCount() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		System.out.println(caterMapper.selectEatCount());
	}

	@Test
	public void testSelectLiveCount() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		System.out.println(caterMapper.selectLiveCount());
	}

	@Test
	public void testSelectCountByCity() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		System.out.println(caterMapper.selectCountByCity("杭州"));
	}
	
	@Test
	public void testSelectAllCitys() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		caterMapper.selectAllCitys().forEach(System.out::println);
	}
	@Test
	public void testSelectListEatByPage() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		CaterVo caterVo = new CaterVo();
		caterVo.setCurrentPage(1);
		caterVo.setPageCount(1);
		Cater cater = new Cater();
		cater.setCaterName("杭州");
		caterVo.setCater(cater);
		caterMapper.selectListEatByPage(caterVo).forEach(System.out::println);
	}

	@Test
	public void testSelectListLiveByPage() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		CaterVo caterVo = new CaterVo();
		caterVo.setCurrentPage(1);
		caterVo.setPageCount(1);
		Cater cater = new Cater();
		cater.setCaterName("杭州");
		caterVo.setCater(cater);
		caterMapper.selectListLiveByPage(caterVo).forEach(System.out::println);
	}

	@Test
	public void testSelectListByPage() {
		CaterMapper caterMapper = (CaterMapper) context.getBean("caterMapper");
		CaterVo caterVo = new CaterVo();
		caterVo.setCurrentPage(1);
		caterVo.setPageCount(1);
		Cater cater = new Cater();
		cater.setCaterName("杭州");
		caterVo.setCater(cater);
		caterMapper.selectListByPage(caterVo).forEach(System.out::println);
	}

}
