package com.credit.web.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.credit.web.entity.User;
import com.credit.web.user.service.UserWebService;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.AjaxUtil;
import com.gvtv.manage.base.util.MD5;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/user")
public class UserController extends BaseController{
	
	@Resource
	private UserWebService userWebService;
	
	/**
	 * 用户登录
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/login")
	public ModelAndView login() throws Exception{
		HttpServletRequest request= this.getRequest();
		String loginName =request.getParameter("loginName");
		String password =request.getParameter("password");
		
		PageData userInfo= (PageData) request.getSession().getAttribute("userInfo");
		if(userInfo==null){
			String newEncodePwd = MD5.md5(password);
			PageData pd = new PageData();
			pd.put("loginName", loginName);
			pd.put("password", newEncodePwd);
			User user=userWebService.login(pd);
			ModelAndView mv = this.getModelAndView();
			if(user!=null){
				request.getSession().setAttribute("userInfo",user);
				mv.setViewName("redirect:/user/user_main.jsp");
			}else{
				mv.setViewName("login");
			}
			return mv;
		}else{
			
		}
		return null;
	}
	
	/**
	 * 调整到登录页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/tologin")
	public ModelAndView toLogin() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	/**
	 * 退出用户登录
	 * @return
	 */
	@RequestMapping(value="/loginout")
	public ModelAndView loginout(){
		HttpServletRequest request= this.getRequest();
		request.getSession().removeAttribute("userInfo");
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("redirect:/index_main.jsp");
		return mv;
	}
	
	/**
	 * 退出用户登录
	 * @return
	 */
	@RequestMapping(value="/toRegister")
	public ModelAndView toRegister(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("/register");
		return mv;
	}
	
	
	/**
	 * 用户注册
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/register")
	public ModelAndView register(HttpServletRequest request,HttpServletResponse response) throws Exception{
		PageData pd= super.getPageData();
		String password =request.getParameter("userPwd");
		String newEncodePwd = MD5.md5(password);
		pd.put("userLevel", 0);
		pd.put("userStatus", 1);
		pd.put("userPwd", newEncodePwd);
		Boolean isFlag=userWebService.register(pd);
		ModelAndView mv = this.getModelAndView();
		if(isFlag){
			mv.setViewName("/login");
		}else{
			mv.setViewName("/register");
		}
		return mv;
	}
	
	@RequestMapping(value="/userdetails")
	public ModelAndView userDetails(HttpServletRequest request) throws Exception{
		String id =request.getParameter("id");
		ModelAndView mv = this.getModelAndView();
		if(id!=null){
			User user = userWebService.getUserById(Integer.valueOf(id));
			mv.addObject("user",user);
			mv.setViewName("/user/user_details");
		}
		return mv;
	}
	
	/**
	 * 跳转到修改密码页面
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toupdatePwd")
	public ModelAndView toUpdatePwd(HttpServletRequest request) throws Exception{
		String id =request.getParameter("id");
		ModelAndView mv = this.getModelAndView();
		if(id!=null){
			User user = userWebService.getUserById(Integer.valueOf(id));
			mv.addObject("user",user);
			mv.setViewName("/user/user_reset_password");
		}
		return mv;
	}
	
	/**
	 * 修改用户密码
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/updatePwd")
	public void updatePwd(HttpServletRequest request,HttpServletResponse response) throws Exception{
		PageData params= super.getPageData();
		
		String newEncodePwd = MD5.md5(String.valueOf(params.get("newpassowrd")));
		params.put("newEncodePwd", newEncodePwd);
		Boolean isFlag = userWebService.updatePassword(params);
		
		String responseText = JSONArray.toJSONString(params);
		AjaxUtil.ajaxResponse(response, responseText, AjaxUtil.RESPONCE_TYPE_JSON);
	}
	
	
}
