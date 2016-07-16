package com.credit.web.credit.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.credit.service.CreditWebService;
import com.credit.web.entity.Credit;
import com.credit.web.entity.User;
import com.credit.web.user.service.UserWebService;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.MozillaUtil;
import com.gvtv.manage.base.util.PageData;
import com.gvtv.manage.base.util.SensitiveUtil;

@Controller
@RequestMapping(value="/credit")
public class CreditController extends BaseController{

	@Resource
	private CreditWebService creditWebService;
	
	@Resource
	private UserWebService userWerService;
	/**
	 * 用户中心债权首页
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(HttpServletRequest request) throws Exception{
		String userId =request.getParameter("userId");
		String creditType =request.getParameter("creditType");
		PageData pd =super.getPageData();
		pd = creditWebService.pageList(pd);
		
		ModelAndView mv = this.getModelAndView();
		mv.addObject("pd", pd);
		mv.addObject("creditType", creditType);
		if(creditType.equals("1")){
			mv.setViewName("/user/user_credit_disposal_list");
		}else if(creditType.equals("2")){
			mv.setViewName("/user/user_credit_transfer_list");
		}
		return mv;
	}
	
	
	@RequestMapping(value="/saveCredit",method =RequestMethod.GET)
	public ModelAndView toSaveCredit() throws Exception{
		String userId =super.getRequest().getParameter("userId");
		ModelAndView mv = this.getModelAndView();
		mv.addObject("userId", userId);
		mv.setViewName("/user/user_credit_disposal_add");
		return mv;
	}
	
	/**
	 * 跳转到修改密码页面
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/saveCredit",method =RequestMethod.POST)
	public String saveCredit() throws Exception{
		PageData pd =super.getPageData();
		pd.put("crStatus", 1);
		creditWebService.creditSave(pd);
		return "redirect:/credit/list";
	}
	
	@RequestMapping(value="/userCreditDetails",method =RequestMethod.GET)
	public ModelAndView userCreditDetails() throws Exception{
		ModelAndView mv = this.getModelAndView();
		String id =super.getRequest().getParameter("id");
		if(id!=null&&id!=""){
			Credit credit = creditWebService.findById(Integer.valueOf(id));
			mv.addObject("credit", credit);
			if(MozillaUtil.isMobileDevice(super.getRequest())){//如果是手机
				//待完成
			}else{
				mv.setViewName("/user/user_credit_disposal_details");
			}
		}
		return mv;
	}
	
	
	/**
	 * 查询债权详情(未登录时，屏蔽敏感信息)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/creditDetails",method =RequestMethod.GET)
	public ModelAndView creditDetails() throws Exception{
		String id =super.getRequest().getParameter("id");
		if(id!=null&&id!=""){
			Credit credit = creditWebService.findById(Integer.valueOf(id));
			User user = null;
			if(null != credit){
				user = userWerService.getUserById(credit.getUserId());
				credit.setDebtName(SensitiveUtil.shieldName(credit.getDebtName()));
				credit.setDebtPhone(SensitiveUtil.shieldPhone(credit.getDebtPhone()));
				credit.setContactName(SensitiveUtil.shieldName(credit.getContactName()));
				credit.setContactNumber(SensitiveUtil.shieldPhone(credit.getContactNumber()));
			}
			if(null == user){
				user = new User();
				user.setNickname("未找到债权人信息");
			}else{
				user.setNickname(SensitiveUtil.shieldName(user.getNickname()));
				user.setUserPhone(SensitiveUtil.shieldPhone(user.getUserPhone()));
			}
			ModelAndView mv = this.getModelAndView();
			mv.addObject("credit", credit);
			mv.addObject("user",user);
			if(MozillaUtil.isMobileDevice(super.getRequest())){//如果是手机
				//待完成
			}else{
				mv.setViewName("/credit/credit_disposal_detail");
			}
			
			return mv;
		}
		return null;
	}
	
	/**
	 * 查询债权列表
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/findCreditList",method =RequestMethod.POST)
	@ResponseBody
	public PageData findCreditList(Integer from) throws Exception{
		
		PageData pd =super.getPageData();
		pd.put("from", from);
		pd.put("size", 10);
		pd = creditWebService.pageList(pd);
		return pd;
	}
	
	/**
	 * 导航债权列表信息（用户未登录时,部分铭感信息屏蔽）
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/navlist")
	public ModelAndView navlist(HttpServletRequest request) throws Exception{
		String creditType =request.getParameter("creditType");
		PageData pd =super.getPageData();
		pd = creditWebService.pageList(pd);
		
		ModelAndView mv = this.getModelAndView();
		mv.addObject("pd", pd);
		mv.addObject("creditType",creditType);
		if(creditType.equals("1")){
			mv.setViewName("/credit/credit_disposal_list");	
		}else if(creditType.equals("2")){
			mv.setViewName("/credit/credit_transfer_list");
		}
		
		return mv;
	}
	
	
}
