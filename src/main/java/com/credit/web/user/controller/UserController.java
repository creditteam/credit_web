package com.credit.web.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.credit.web.entity.User;
import com.credit.web.user.service.UserWebService;
import com.credit.web.util.AliSendMsg;
import com.credit.web.util.DataUtil;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.AjaxUtil;
import com.gvtv.manage.base.util.MD5;
import com.gvtv.manage.base.util.MozillaUtil;
import com.gvtv.manage.base.util.PageData;
import com.taobao.api.ApiException;

@Controller
@RequestMapping(value="/user")
public class UserController extends BaseController{
	
	@Resource
	private UserWebService userWebService;
	
	/**
	 * 退出用户登录
	 * @return
	 */
	@RequestMapping(value="/index")
	public ModelAndView index(){
		HttpServletRequest request= this.getRequest();
		User user=(User) request.getSession().getAttribute("userInfo");
		ModelAndView mv = this.getModelAndView();
		Boolean isMobile = MozillaUtil.isMobileDevice(request);
		if(user!=null){
			if(isMobile){
				mv.setViewName("/mobile/userHome");
			}else{
				mv.setViewName("/user/user_main");
			}
		}else{
			mv.setViewName("redirect:/index");
		}
		return mv;
	}
	
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
			Boolean isMobile = MozillaUtil.isMobileDevice(request);
			if(user!=null){
				request.getSession().setAttribute("userInfo",user);
				if(isMobile){
					mv.setViewName("redirect:/mobile/userHome.jsp");
				}else{
					mv.setViewName("redirect:/user/index");
				}
			}else{
				mv.addObject("result","用户名或密码错误");
				if(isMobile){
					mv.setViewName("mobile/Login");
				}else{
					mv.setViewName("login");
				}
			}
			return mv;
		}else{
			
		}
		return null;
	}
	
	/**
	 * 转到登录页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/tologin")
	public ModelAndView toLogin() throws Exception {
		ModelAndView mv = this.getModelAndView();
		Boolean isMobile = MozillaUtil.isMobileDevice(super.getRequest());
		if(isMobile){
			User user = (User) this.getRequest().getSession().getAttribute("userInfo");
			if(null != user){
				mv.setViewName("redirect:/mobile/userHome.jsp");
			}else{
				mv.setViewName("mobile/Login");
			}
		}else{
			mv.setViewName("login");
		}
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
		Boolean isMobile = MozillaUtil.isMobileDevice(request);
		if(isMobile){
			mv.setViewName("mobile/Login");
		}else{
			mv.setViewName("login");
		}
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
		//判断当前用户和邮箱是否存在
		
		Boolean isFlag=userWebService.register(pd);
		ModelAndView mv = this.getModelAndView();
		Boolean isMobile = MozillaUtil.isMobileDevice(request);
		if(isFlag){//注册成功
			if(isMobile){//如果是手机注册
				mv.setViewName("/mobile/login");
			}else{
				mv.setViewName("/login");
			}
		}else{
			if(isMobile){//如果是手机注册
				mv.setViewName("/mobile/ml_regist");
			}else{
				mv.setViewName("/register");
			}
		}
		return mv;
	}
	
	/**
	 * 查看用户明细
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/userdetails")
	public ModelAndView userDetails(HttpServletRequest request) throws Exception{
		String id =request.getParameter("id");
		ModelAndView mv = this.getModelAndView();
		if(id!=null){
			User user = userWebService.getUserById(Integer.valueOf(id));
			mv.addObject("user",user);
			if(MozillaUtil.isMobileDevice(request)){
				mv.setViewName("/mobile/user_info");
			}else{
				mv.setViewName("/user/user_details");
			}
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
	
	/**
	 * 修改用户密码
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/updUsePwd")
	@ResponseBody
	public String updateUserPwd(String userPwd,String newpassowrd) throws Exception{
		PageData pd= super.getPageData();
		String result = "";
		userPwd = MD5.md5(String.valueOf(userPwd));
		
		User user = (User) this.getRequest().getSession().getAttribute("userInfo");
		pd.put("loginName", user.getUserPhone());
		pd.put("password", userPwd);
		User userOld = userWebService.login(pd);
		
		if(null != user && null != userOld){
			String newEncodePwd = MD5.md5(newpassowrd);
			pd.put("newEncodePwd", newEncodePwd);
			pd.put("id", userOld.getId());
			Boolean isFlag = userWebService.updatePassword(pd);
			if(isFlag){
				result = "修改成功!";
			}else{
				result = "修改失败!";
			}
		}else{
			result = "原密码输入错误";
		}
		return result;
		
	}
	
	/**
	 * 验证注册手机是否已经存在
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/validaPhone")
	@ResponseBody
	public Map<String ,Object> validatorPhone(String userPhone) throws Exception{
		PageData pd= super.getPageData();
		pd.put("userPhone", userPhone);
		List<User> userLst = userWebService.findPartUserList(pd);
		Map<String ,Object> result = new HashMap<String ,Object>();
		if(null != userLst & userLst.size() > 0){
			result.put("valid", false);
		}else{
			result.put("valid", true);
		}
		return result;
	}
	
	/**
	 * 验证注册邮箱是否已经存在
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/validaEmail")
	@ResponseBody
	public Map<String ,Object> validatorEmail(String userEmail) throws Exception{
		PageData pd= super.getPageData();
		pd.put("userEmail", userEmail);
		List<User> userLst = userWebService.findPartUserList(pd);
		Map<String ,Object> result = new HashMap<String ,Object>();
		if(null != userLst & userLst.size() > 0){
			result.put("valid", false);
		}else{
			result.put("valid", true);
		}
		return result;
	}
	
	/**
	 * 用户密码找回
	 */
	@RequestMapping(value="/passBack")
	public ModelAndView passwordGetBack(HttpServletRequest request) throws Exception{
		
		PageData pd= super.getPageData();
		ModelAndView mv = this.getModelAndView();
		
		String phone =  request.getParameter("userPhone");
		String registerZm = request.getParameter("registerZm");//验证码
		pd.put("phone", phone);
		User user = userWebService.findUserByPhoneOrEmail(pd);
		String result = "";
		if(null == user){
			result = "没找到该手机用户";
		}else{
			pd.put("id",user.getId());
			String newEncodePwd = MD5.md5(String.valueOf(pd.get("newpassowrd")));
			pd.put("newEncodePwd", newEncodePwd);
			Boolean isFlag = userWebService.updatePassword(pd);
			if(isFlag){
				result = "密码重置成功!";
			}else{
				result = "密码重置出错!";
			}
		}
		mv.addObject("result",result);
		Boolean isMobile = MozillaUtil.isMobileDevice(request);
		if(isMobile){
			mv.setViewName("/mobile/Login");
		}else{
			mv.setViewName("/login");
		}
		return mv;
	}
	
	/**
	 * 查询处置专家、律师、媒体人
	 * @return
	 */
	@RequestMapping(value="/expertList")
	public ModelAndView findAllExpertList(HttpServletRequest request) throws Exception{
		
		PageData pd= super.getPageData();
		pd.put("userLevel", 99);//专家、律师、财经法制媒体人
		pd.put("userStatus", 7);
		List<User> userList1 = userWebService.findPartUserList(pd);
		pd.put("userStatus", 8);
		List<User> userList2 = userWebService.findPartUserList(pd);
		pd.put("userStatus", 9);
		List<User> userList3 = userWebService.findPartUserList(pd);
		
		ModelAndView mv = this.getModelAndView();
		mv.addObject("userList1",userList1);
		mv.addObject("userList2",userList2);
		mv.addObject("userList3",userList3);
		//if(MozillaUtil.isMobileDevice(request)){
			mv.setViewName("mobile/expert");
		//}else{
			//待完成
		//}
		return mv;
		
	}
	
	/**
	 * 专家顾问详情
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/expertDetail")
	public ModelAndView expertDetail(String id) throws Exception{
		ModelAndView mv = this.getModelAndView();
		if(null != id && !"".equals(id)){
			User user = userWebService.getUserById(Integer.valueOf(id));
			mv.addObject("user",user);
		}
		if(MozillaUtil.isMobileDevice(super.getRequest())){
			mv.setViewName("mobile/expert_detail");
		}else{
			//PC待开发
		}
		return mv;
	}
	
	/**
	 * 发送手机验证码
	 * @param phoneNum
	 * @return
	 */
	@RequestMapping(value="/sendPhone")
	@ResponseBody
	public Map<String , Object> sendPhoneValidNum(String phoneNum){
		int phoneInt = DataUtil.nextInt();
		Map<String , Object> map = new HashMap<String , Object>();
		if (phoneNum != null) {
			try{
				AliSendMsg.SendMsg(String.valueOf(phoneInt), phoneNum, "SMS_7505878");
				map.put("result", "true");
			}catch(ApiException a){
				map.put("result", "false");
			}
		}
		map.put("phoneInt", phoneInt);
		return map;
	}
	
}
