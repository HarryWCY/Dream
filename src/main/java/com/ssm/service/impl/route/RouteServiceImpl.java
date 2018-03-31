package com.ssm.service.impl.route;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.PageBean;
import com.ssm.entity.route.Route;
import com.ssm.entity.route.RouteDay;
import com.ssm.mapper.route.RouteDayMapper;
import com.ssm.mapper.route.RouteMapper;
import com.ssm.service.route.RouteService;
import com.ssm.vo.RouteVo;
/**
 * 旅游路线服务层实现类
 * @author Harry
 * @version 1.0
 * 本类RouteServiceImpl.java是描述
 */
@Service
public class RouteServiceImpl implements RouteService{
	
	@Autowired
	private RouteMapper routeMapper;
	@Autowired
	private RouteDayMapper routeDayMapper;
	@Override
	public List<Route> queryAll() {
		return routeMapper.selectAll();
	}
	@Override
	public Route queryRouteById(Integer id) {
		return routeMapper.selectRouteById(id);
	}
	@Override
	public PageBean<Route> queryPageByCondition(Integer currentPage, Integer size, RouteVo routeVo) {
		routeVo.setCurrentPage(currentPage);
		routeVo.setPageCount(size);
		int count = routeMapper.selectCountByCondition(routeVo);
		List<Route> routes = routeMapper.selectListByPage(routeVo);
		PageBean<Route> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(routes);
		return pageBean;
	}
	@Override
	public List<RouteDay> findRouteDayByRouteId(Integer id) {
		return routeDayMapper.selectRouteDayByRouId(id);
	}

}
