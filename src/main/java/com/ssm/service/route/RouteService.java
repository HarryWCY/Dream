package com.ssm.service.route;

import java.util.List;

import com.ssm.entity.PageBean;
import com.ssm.entity.route.Route;
import com.ssm.entity.route.RouteDay;
import com.ssm.vo.RouteVo;
/**
 * 旅游路线服务层接口
 * @author Harry
 * @version 1.0
 * 本类RouteService.java是描述
 */
public interface RouteService {
	/**
	 * 查询所有旅游路线项目
	 * @return
	 */
	List<Route> queryAll();
	/**
	 * 根据id查询旅游路线项目
	 * @param id
	 * @return
	 */
	Route queryRouteById(Integer id);
	/**
	 * 分页查询旅游路线项目
	 * @param currentPage
	 * @param size
	 * @param routeVo
	 * @return
	 */
	PageBean<Route> queryPageByCondition(Integer currentPage,Integer size,RouteVo routeVo);
	List<RouteDay> findRouteDayByRouteId(Integer id);
}
