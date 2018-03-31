package com.ssm.service.specialty;

import java.util.List;

import com.ssm.entity.PageBean;
import com.ssm.entity.specialty.Specialty;
import com.ssm.vo.SpecialtyVo;
/**
 * 地方特产服务层接口
 * @author Harry
 * @version 1.0
 * 本类SpecialtySerive.java是描述
 */
public interface SpecialtyService {
	
		/**
		 * 查询所有地方特产
		 * @return
		 */
		List<Specialty> queryAll();
		/**
		 * 根据id查找地方特产
		 * @param id
		 * @return
		 */
		Specialty querySpecialtyById(Integer id);
		/**
		 * 
		 * @param specialtyVo
		 * @return
		 */
		List<Specialty> querySpecialtysByCondition(SpecialtyVo specialtyVo);
		/**
		 * 根据区域查询地方特产
		 * @param Origin
		 * @return
		 */
		List<Specialty> querySpecialtysByOrigin(String  Origin);
		/**
		 * 分页查询地方特产	
		 * @param currentPage
		 * @param size
		 * @param specialtyVo
		 * @return
		 */
		PageBean<Specialty> queryPageByCondition(Integer currentPage,Integer size,SpecialtyVo specialtyVo);
			
			
		
}
