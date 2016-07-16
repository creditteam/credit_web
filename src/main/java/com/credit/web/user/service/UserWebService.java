package com.credit.web.user.service;

import java.util.List;

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
	
	/**
	 * 用户登录
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public User login(PageData pd) throws Exception{
		return (User) dao.findForObject("UserMapper.getUserInfo", pd);
	}
	
	/**
	 * 根据用户ID获取用户信息
	 * @author huixiong 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public User getUserById(Integer id) throws Exception{
		return (User) dao.findForObject("UserMapper.getUserById", id);
	}
	
	/**
	 * 用户注册
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public Boolean register(PageData pd) throws Exception{
		int num = dao.save("UserMapper.saveUserInfo", pd);
		if (num > 0) {
			return true;
		}
		return false;
	}
	
	/**
	 * 修改用户密码
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public Boolean updatePassword(PageData pd) throws Exception{
		int num = dao.update("UserMapper.updatePassword", pd);
		if (num > 0) {
			return true;
		}
		return false;
	}
	
	/**
	 * 根据手机或者邮箱查找用户
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public User findUserByPhoneOrEmail(PageData pd) throws Exception{
		User user = dao.findForObject("UserMapper.getUserByPhoneOrEmail", pd);
		return user;
	}
	
	public List<User> findPartUserList(PageData pd) throws Exception{
		List<User> userList = dao.findForList("UserMapper.list", pd);
		return userList;
	}
}
