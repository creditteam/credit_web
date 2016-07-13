/** 
  * Project Name:credit_web 
  * File Name:BlogService.java 
  * Package Name:com.credit.web.blog.service 
  * Date:2016年7月13日下午7:56:02 
  * Copyright (c) 2016, JuanPi.com All Rights Reserved
  */  
  
package com.credit.web.blog.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.credit.web.entity.Blog;
import com.credit.web.entity.Reward;
import com.gvtv.manage.base.dao.BaseDao;
import com.gvtv.manage.base.util.AppUtil;
import com.gvtv.manage.base.util.Const;
import com.gvtv.manage.base.util.PageData;

/** 
  * @author huixiong 
  * @date: 2016年7月13日 下午7:56:02 
  * @since:1.0.0
  */
@Transactional(readOnly=true)
@Service("blogWebService")
public class BlogWebService {
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
		
		pd.put("from", pd.getInteger("start"));
		pd.put("size", pd.getInteger("length"));
		 List<PageData> pds = dao.findForList("BlogMapper.list", pd);
		AppUtil.nullToEmpty(pds, new String[]{"menuId", "menuName", "menuUrl", "menuOrder", "description"});
		
		result.put(Const.DRAW, pd.getString(Const.DRAW));
		result.put(Const.RECORDSTOTAL, totalNum);
		result.put(Const.RECORDSFILTERED, totalNum);
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
	public List<Blog> bloglist(PageData pd) throws Exception {
		List<Blog> blogList = dao.findForList("BlogMapper.list", pd);
		return blogList;
	}
	

		
	public Reward findById(Integer id)throws Exception {
		Reward reward = dao.findForObject("BlogMapper.findById", id);
		return reward;
	}
}
  