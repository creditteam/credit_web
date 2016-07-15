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
	 * 业务资讯分页信息
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData pageList(PageData pd) throws Exception{
		PageData result = new PageData();
		int totalNum = (int) dao.findForObject("BlogMapper.count", pd);
		
		List<Blog> pds = dao.findForList("BlogMapper.list", pd);
		
		result.put("size", pd.get("size"));
		result.put("blogType", pd.get("blogType"));
		result.put(Const.RECORDSTOTAL, totalNum);
		result.put(Const.NDATA, pds);
		return result;
	}
	
	/**
	 * 业务资讯列表信息
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public List<Blog> bloglist(PageData pd) throws Exception {
		List<Blog> blogList = dao.findForList("BlogMapper.list", pd);
		return blogList;
	}
	

		
	public Blog findById(Integer id)throws Exception {
		Blog blog = dao.findForObject("BlogMapper.findById", id);
		return blog;
	}
}
  