package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.entity.PageBean;
import com.ssm.entity.specialty.Specialty;
import com.ssm.service.specialty.SpecialtyService;
import com.ssm.vo.SpecialtyVo;

@Controller
@RequestMapping(value = "/specialty")
public class SpecialtyController {
	private static final Integer pageSize = 4;
	private static final Integer firstPage = 1;
	@Autowired
	private SpecialtyService specialtyService;
	
	@RequestMapping(value = "/specialtyList")
	public String specialtyList(Model model,SpecialtyVo specialtyVo) throws Exception{
		List<Specialty> specialties = specialtyService.querySpecialtysByCondition(specialtyVo);
		model.addAttribute("specialties",specialties);
		return "specialty/specialtyList";
	}
	
	@RequestMapping(value = "/getSpecialtyData")
	public String getSpecialtyData(Model model,SpecialtyVo specialtyVo,HttpServletRequest request) throws Exception{
		String pageNo = request.getParameter("page");
		String origin = request.getParameter("origin");
		System.out.println(pageNo);
		if (origin != null) {
			Specialty specialty = new Specialty();
			specialty.setOrigin(origin);
			specialtyVo.setSpecialty(specialty);
		}
		if (pageNo == null) {
			pageNo = String.valueOf(firstPage);
		}
		PageBean<Specialty> page = specialtyService.queryPageByCondition(Integer.valueOf(pageNo), pageSize, specialtyVo);
		page.getDatas().forEach(System.out::println);
		request.setAttribute("page", page);
		return "specialty/specialtyListPage";
	}
	@RequestMapping(value = "/specialtyDetail")
	public String specialtyDetail(Model model,Integer id) throws Exception{
		Specialty specialty = specialtyService.querySpecialtyById(id);
		model.addAttribute("specialty",specialty);
		return "specialty/specialtyDetail";
	}
}
