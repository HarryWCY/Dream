package com.ssm.mapper.specialty;

import java.util.List;

import com.ssm.entity.specialty.Specialty;
import com.ssm.vo.SpecialtyVo;
/**
 * 地方特产持久层接口
 * @author Harry
 * @version 1.0
 * 本类SpecialtyMapper.java是描述
 */
public interface SpecialtyMapper {
	
		/**
		 * 查询所有特产
		 * @return
		 */
		List<Specialty> selectAll();
		
		/**
		 * 根据Id查询
		 * @param id
		 * @return
		 */
		Specialty selectSpecialtyById(Integer id);
		
		/**
		 * 根据特产所在区域查询
		 * @param Origin
		 * @return
		 */
		List<Specialty> selectSpecialtysByOrigin(String Origin);
		
		/**
		 * 根据特产所在区域查询所有特产
		 * @param specialtyVo
		 * @return
		 */
		List<Specialty> selectSpecialtysByCondition(SpecialtyVo specialtyVo);
		
		/**
		 * 查询总记录数
		 * @param specialtyVo
		 * @return
		 */
		int selectCountByCondition(SpecialtyVo specialtyVo);
		
		/**
		 * 查询分页
		 * @param specialtyVo
		 * @return
		 */
		List<Specialty> selectListByPage(SpecialtyVo specialtyVo);

}
