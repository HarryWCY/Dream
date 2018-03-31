package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssm.entity.PageBean;
import com.ssm.entity.route.Route;
import com.ssm.entity.route.RouteDay;
import com.ssm.service.route.RouteService;
import com.ssm.vo.RouteVo;

@Controller
@RequestMapping(value = "/route")
public class RouteController {
	private static final Integer pageSize = 2;
	private static final Integer firstPage = 1;
	@Autowired
	private RouteService routeService;
	
	@RequestMapping(value = "/routeList")
	public String routeList(Model model,RouteVo routeVo)
			throws Exception {
		PageBean<Route> pageBean = routeService.queryPageByCondition(firstPage, pageSize, routeVo);
		model.addAttribute("page", pageBean);
		return "route/routeList";
	}
	@RequestMapping(value = "/getRouteData")
	public String getRouteData(Model model,RouteVo routeVo,HttpServletRequest request) throws Exception{
		String pageNo = request.getParameter("page");
		if(pageNo == null){
			pageNo = String.valueOf(firstPage);
		}
		PageBean<Route> page = routeService.queryPageByCondition(Integer.valueOf(pageNo), pageSize,routeVo);
		request.setAttribute("page", page);
		return "route/routeListPage";
	}
	@RequestMapping(value = "/routeDetail")
	public String routeDetail(Model model,Integer id)throws Exception{
		Route route = routeService.queryRouteById(id);
		List<RouteDay> routeDays = routeService.findRouteDayByRouteId(route.getId());
		model.addAttribute("route",route);
		model.addAttribute("routeDays",routeDays);
		return "route/routeDetail";
	}
	@RequestMapping(value = "/routeReserve")
	public String routeReserve(Model model,Integer id) throws Exception{
		Route route = routeService.queryRouteById(id);
		model.addAttribute("route",route);
		return "routeReserve/routeReserve";
	}
	
}
