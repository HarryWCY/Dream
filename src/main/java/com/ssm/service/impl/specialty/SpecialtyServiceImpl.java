package com.ssm.service.impl.specialty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.PageBean;
import com.ssm.entity.specialty.Specialty;
import com.ssm.mapper.specialty.SpecialtyMapper;
import com.ssm.service.specialty.SpecialtyService;
import com.ssm.vo.SpecialtyVo;
/**
 * 地方特产服务层实现类
 * @author Harry
 * @version 1.0
 * 本类SpecialtyServiceImpl.java是描述
 */
@Service
public class SpecialtyServiceImpl implements SpecialtyService{
	
	@Autowired
	private  SpecialtyMapper specialtyMapper;
	
	@Override
	public List<Specialty> queryAll() {
		 return specialtyMapper.selectAll();
	}

	@Override
	public Specialty querySpecialtyById(Integer id) {
		return specialtyMapper.selectSpecialtyById(id);
	}

	@Override
	public PageBean<Specialty> queryPageByCondition(Integer currentPage, Integer size, SpecialtyVo specialtyVo) {
		int count = specialtyMapper.selectCountByCondition(specialtyVo);
		specialtyVo.setCurrentPage(currentPage);
		specialtyVo.setPageCount(size);
		List<Specialty> specialtys = specialtyMapper.selectListByPage(specialtyVo);
		PageBean<Specialty> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(specialtys);
		return pageBean;
	}

	@Override
	public List<Specialty> querySpecialtysByCondition(SpecialtyVo specialtyVo) {
		return specialtyMapper.selectSpecialtysByCondition(specialtyVo);
	}

	@Override
	public List<Specialty> querySpecialtysByOrigin(String Origin) {
		return specialtyMapper.selectSpecialtysByOrigin(Origin);
	}

}
