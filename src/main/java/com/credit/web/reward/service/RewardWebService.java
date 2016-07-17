/** 
  * Project Name:credit_web 
  * File Name:RewardService.java 
  * Package Name:com.credit.web.reward.service 
  * Date:2016年7月13日下午6:06:27 
  * Copyright (c) 2016, JuanPi.com All Rights Reserved
  */  
  
package com.credit.web.reward.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.credit.web.common.tag.PageInfo;
import com.credit.web.common.tag.PageUtil;
import com.credit.web.entity.Reward;
import com.gvtv.manage.base.dao.BaseDao;
import com.gvtv.manage.base.util.AppUtil;
import com.gvtv.manage.base.util.Const;
import com.gvtv.manage.base.util.PageData;

/** 
  * @department:架构服务部/JAVA工程师
  * @author huixiong 
  * @date: 2016年7月13日 下午6:06:27 
  * @since:1.0.0
  */
@Transactional(readOnly=true)
@Service("rewardWebService")
public class RewardWebService {
	@Resource(name = "BaseDao")
	private BaseDao dao;
	
	/**
	 * 查询债权分页信息
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData pageList(PageData pd) throws Exception{
		PageData result = new PageData();
		String search = pd.getString("keyword");
		if (StringUtils.isNotBlank(search)) {
			pd.put("keyword", "%" + search + "%");
		}
		int totalNum = (int) dao.findForObject("RewardMapper.count", pd);
		
		pd.put("from", pd.getInteger("from"));
		pd.put("size", pd.getInteger("size"));
		List<Reward> pds = dao.findForList("RewardMapper.list", pd);
		
		PageUtil pu = new PageUtil(totalNum,1,10);
		PageInfo pageInfo = pu.getPageInfo();
		pageInfo.setRangeSize(20);
		
		result.put("pageInfo", pageInfo);
		result.put(Const.NDATA, pds);
		return result;
	}
	
	/**
	 * 查询债权列表信息
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public List<Reward> rewardlist(PageData pd) throws Exception {
		List<Reward> rewardList = dao.findForList("RewardMapper.list", pd);
		return rewardList;
	}
	
	/**
	 * 
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public Boolean rewardSave(Reward reward) throws Exception {
		int num = dao.save("RewardMapper.rewardSave", reward);
		if(num>0){
			return true;
		}
		return false;
	}
	
	
	public Reward findById(Integer id)throws Exception {
		Reward reward = dao.findForObject("RewardMapper.findById", id);
		return reward;
	}
}
  