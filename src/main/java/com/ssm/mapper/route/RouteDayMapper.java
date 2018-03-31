package com.ssm.mapper.route;

import java.util.List;

import com.ssm.entity.route.RouteDay;
/**
 * 旅游路线日程安排持久层接口
 * @author Harry
 * @version 1.0
 * 本类RouteDayMapper.java是描述
 */
public interface RouteDayMapper {
	/**
	 * 根据旅游路线id查找每天日程安排
	 * @param route_id
	 * @return
	 */
	List<RouteDay> selectRouteDayByRouId(Integer route_id);
}
