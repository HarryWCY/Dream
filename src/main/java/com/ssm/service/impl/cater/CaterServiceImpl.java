package com.ssm.service.impl.cater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.PageBean;
import com.ssm.entity.cater.Cater;
import com.ssm.mapper.cater.CaterMapper;
import com.ssm.service.cater.CaterService;
import com.ssm.vo.CaterVo;
/**
 * 餐饮住宿服务层实现类
 * @author Harry
 * @version 1.0
 * 本类CaterServiceImpl.java是描述
 */
@Service
public class CaterServiceImpl implements CaterService {

	@Autowired
	private CaterMapper caterMapper;

	@Override
	public List<Cater> queryCater(Integer type) {
		return caterMapper.selectCaterByType(type);
	}

	@Override
	public Cater queryCaterById(Integer id) {
		return caterMapper.selectCaterById(id);
	}

	@Override
	public Integer queryAll() {
		return caterMapper.selectEatCount()+caterMapper.selectLiveCount();
	}

	@Override
	public PageBean<Cater> queryEatByCondition(Integer currentPage, Integer size, CaterVo caterVo) {
		caterVo.setCurrentPage(currentPage);
		caterVo.setPageCount(size);
		int count = caterMapper.selectEatCount();
		List<Cater> caters = caterMapper.selectListEatByPage(caterVo);
		PageBean<Cater> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(caters);
		return pageBean;
	}

	@Override
	public PageBean<Cater> queryLiveByCondition(Integer currentPage, Integer size, CaterVo caterVo) {
		caterVo.setCurrentPage(currentPage);
		caterVo.setPageCount(size);
		int count = caterMapper.selectLiveCount();
		List<Cater> caters = caterMapper.selectListLiveByPage(caterVo);
		PageBean<Cater> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(caters);
		return pageBean;
	}

	@Override
	public PageBean<Cater> queryPageByCondition(Integer currentPage, Integer size, CaterVo caterVo) {
				int count = -1;
				Integer type = caterVo.getCater().getType();
				String city = caterVo.getCater().getCity();
				if(type != null ){
					int i = type;
					System.out.println("i:"+i);
					if(i==0){
						count = caterMapper.selectEatCount();
					}else if(i==1){
						count = caterMapper.selectLiveCount();
					}
				}else if(city != null){
					count = caterMapper.selectCountByCity(city);
				}
				// 获取list集合
				caterVo.setCurrentPage(currentPage);
				caterVo.setPageCount(size);
				List<Cater> eatlives = caterMapper.selectListByPage(caterVo);
				PageBean<Cater> pageBean = new PageBean<>(count, size);
				pageBean.setCurrent(currentPage);
				pageBean.setDatas(eatlives);
				return pageBean;
	}

	@Override
	public List<String> queryAllCitys() {
		return caterMapper.selectAllCitys();
	}
}
