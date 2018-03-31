package com.ssm.mapper.cater;

import java.util.List;

import com.ssm.entity.cater.Cater;
import com.ssm.vo.CaterVo;
/**
 * 餐饮住宿持久层接口
 * @author Harry
 * @version 1.0
 * 本类CaterMapper.java是描述
 */
public interface CaterMapper {
	/**
	 * 根据类型查餐饮
	 */
	List<Cater> selectCaterByType(Integer type);
	
	/**
	 * 根据id查详情
	 */
	Cater selectCaterById(Integer id);
	
	/**
	 * 查询餐饮记录数
	 */
	Integer selectEatCount();
	/**
	 * 查询住宿记录数
	 */
	Integer selectLiveCount();
	
	/**
	 * 查询指定城市记录数
	 */
	Integer selectCountByCity(String city);
	/**
	 * 查询所有城市
	 */
	List<String> selectAllCitys();
	/**
	 * 查询餐饮分页
	 */
	List<Cater> selectListEatByPage(CaterVo caterVo);
	
	/**
	 * 查询住宿分页
	 */
	List<Cater> selectListLiveByPage(CaterVo caterVo);
	
	/**
	 * 查询餐饮住宿分页
	 */
	List<Cater> selectListByPage(CaterVo caterVo);
}
