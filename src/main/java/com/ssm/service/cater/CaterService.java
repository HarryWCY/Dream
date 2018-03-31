package com.ssm.service.cater;

import java.util.List;
import com.ssm.entity.cater.Cater;
import com.ssm.vo.CaterVo;
import com.ssm.entity.PageBean;
/**
 * 餐饮住宿服务层接口
 * @author Harry
 * @version 1.0
 * 本类CaterService.java是描述
 */
public interface CaterService {
	/**
	 * 查询餐饮住宿
	 */
	List<Cater> queryCater(Integer type);
	
	/**
	 * 根据id查询餐饮住宿详情
	 */
	Cater queryCaterById(Integer id);
	/**
	 * 查询所有城市
	 */
	List<String> queryAllCitys();
	/**
	 * 查询记录数
	 */
	Integer queryAll();
	
	/**
	 * 分页查询列表
	 * @param currentPage 当前页
	 * @param size 每页数
	 * @param CaterVo
	 * @return
	 */
	PageBean<Cater> queryEatByCondition(Integer currentPage,Integer size,CaterVo caterVo);
	
	/**
	 * 分页查询列表
	 * @param currentPage 当前页
	 * @param size 每页数
	 * @param CaterVo
	 * @return
	 */
	PageBean<Cater> queryLiveByCondition(Integer currentPage,Integer size,CaterVo caterVo);
	
	/**
	 * 分页查询列表
	 * @param currentPage 当前页
	 * @param size 每页数
	 * @param CaterVo
	 * @return
	 */
	PageBean<Cater> queryPageByCondition(Integer currentPage,Integer size,CaterVo caterVo);
}
