package com.credit.web.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.credit.web.entity.User;
import com.gvtv.manage.base.dao.BaseDao;
import com.gvtv.manage.base.util.PageData;

@Transactional(readOnly=true)
@Service("userWebService")
public class UserWebService {
	@Resource(name = "BaseDao")
	private BaseDao dao;
	
	public User login(PageData pd) throws Exception{
		return (User) dao.findForObject("UserMapper.getUserInfo", pd);
	}
	
	public User getUserById(Integer id) throws Exception{
		return (User) dao.findForObject("UserMapper.getUserById", id);
	}
	
	public Boolean register(PageData pd) throws Exception{
		int num = dao.save("UserMapper.saveUserInfo", pd);
		if (num > 0) {
			return true;
		}
		return false;
	}
}
