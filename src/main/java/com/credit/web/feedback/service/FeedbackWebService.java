/** 
  * Project Name:credit_web 
  * File Name:FeedbackService.java 
  * Package Name:com.credit.web.feedback.service 
  * Date:2016年7月13日下午6:53:03 
  * Copyright (c) 2016, JuanPi.com All Rights Reserved
  */  
  
package com.credit.web.feedback.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gvtv.manage.base.dao.BaseDao;
import com.gvtv.manage.base.util.PageData;

/** 
  * @author huixiong 
  * @date: 2016年7月13日 下午6:53:03 
  * @since:1.0.0
  */
@Transactional(readOnly=true)
@Service("feedbackWebService")
public class FeedbackWebService {
	@Resource(name = "BaseDao")
	private BaseDao dao;
	
	/**
	 * 保存意见反馈
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public Boolean feedbackSave(PageData pd) throws Exception {
		int num = dao.save("FeedbackMapper.save", pd);
		if(num>0){
			return true;
		}
		return false;
	}
}
  