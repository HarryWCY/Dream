package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.entity.PageBean;
import com.ssm.entity.cater.Cater;
import com.ssm.service.cater.CaterService;
import com.ssm.vo.CaterVo;

@Controller
@RequestMapping(value = "/cater")
public class CaterController {
	private static final Integer pageSize = 1;
	private static final Integer firstPage = 1;
	private static final Integer defaultType = 0;
	@Autowired
	private CaterService caterService;
	
	@RequestMapping(value = "/caterList")
	public String caterList(Model model) throws Exception{
		List<String> citys = caterService.queryAllCitys();
		model.addAttribute("citys",citys);
		return "cater/caterList";
	}
	
	@RequestMapping(value = "/getCaterData")
	public String getCaterData(Model model,CaterVo caterVo,HttpServletRequest request) throws Exception{
		String pageNo = request.getParameter("page");
		System.out.println(pageNo);
		String type = request.getParameter("type");
		System.out.println(type);
		String city = request.getParameter("city");
		System.out.println(city);
		String lv = request.getParameter("lv");
		System.out.println(lv);
		Cater cater = new Cater();
		if(city != null && city != ""){
			cater.setCity(city);
		} else if(lv != null && lv != ""){
			String[] lvs = lv.split(",");
			cater.setLv(lvs[0]);
			cater.setType(Integer.parseInt(lvs[1]));
		}else {
			if(type == null){
				type = String.valueOf(defaultType);
				cater.setType(Integer.parseInt(type));
			}else {
				cater.setType(Integer.parseInt(type));
			}
		}
		caterVo.setCater(cater);
		if (pageNo == null) {
			pageNo = String.valueOf(firstPage);
		}
		PageBean<Cater> page = caterService.queryPageByCondition(Integer.valueOf(pageNo), pageSize, caterVo);
		request.setAttribute("page", page);
		return "cater/caterListPage";
	}
	
	@RequestMapping(value = "/caterDetail")
	public String caterDetail(Model model,Integer id) throws Exception{
		Cater cater = caterService.queryCaterById(id);
		Cater preCater = caterService.queryCaterById(id-1);
		Cater aftCater = caterService.queryCaterById(id+1);
		model.addAttribute("cater",cater);
		model.addAttribute("preCater",preCater);
		model.addAttribute("aftCater",aftCater);
		return "cater/caterDetail";
	}
}
