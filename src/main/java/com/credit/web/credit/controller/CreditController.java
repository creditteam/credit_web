package com.credit.web.credit.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.credit.service.CreditWebService;
import com.credit.web.entity.Credit;
import com.credit.web.entity.User;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/credit")
public class CreditController extends BaseController{

	@Resource
	private CreditWebService creditWebService;
	/**
	 * 用户中心债权首页
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(HttpServletRequest request) throws Exception{
		String userId =request.getParameter("userId");
		PageData pd =super.getPageData();
		pd.put("from", 0);
		pd.put("size", 10);
		List<Credit> creditList = creditWebService.creditlist(pd);
		
		ModelAndView mv = this.getModelAndView();
		mv.addObject("creditList", creditList);
		mv.addObject("pd", pd);
		mv.setViewName("/user/user_credit_disposal_list");
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
	
	/**
	 * 查询债权详情
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/creditDetails",method =RequestMethod.GET)
	public ModelAndView creditDetails() throws Exception{
		String id =super.getRequest().getParameter("id");
		if(id!=null&&id!=""){
			Credit credit = creditWebService.findById(Integer.valueOf(id));
			ModelAndView mv = this.getModelAndView();
			mv.addObject("credit", credit);
			mv.setViewName("/user/user_credit_disposal_details");
			return mv;
		}
		return null;
	}
	
	
}
