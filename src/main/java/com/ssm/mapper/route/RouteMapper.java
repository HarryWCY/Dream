package com.ssm.mapper.route;

import java.util.List;

import com.ssm.entity.route.Route;
import com.ssm.vo.RouteVo;
/**
 * 旅游路线持久层接口
 * @author Harry
 * @version 1.0
 * 本类RouteMapper.java是描述
 */
public interface RouteMapper {
	/**
	 * 查询所有
	 * @return
	 */
	List<Route> selectAll();
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	Route selectRouteById(Integer id);	
	/**
	 * 统计旅游路线数量
	 * @param routeVo
	 * @return
	 */
	int selectCountByCondition(RouteVo routeVo);
	/**
	 * 分页查找旅游路线信息
	 * @param routeVo
	 * @return
	 */
	List<Route> selectListByPage(RouteVo routeVo);
	
}
