package com.credit.web.mainpage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.blog.service.BlogWebService;
import com.credit.web.credit.service.CreditWebService;
import com.credit.web.entity.Blog;
import com.credit.web.entity.Credit;
import com.credit.web.entity.User;
import com.credit.web.user.service.UserWebService;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.MozillaUtil;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/mainPage")
public class MainPageController extends BaseController{
	
	@Resource
	private CreditWebService creditWebService;//债权
	
	@Resource
	private BlogWebService blogWebService;//业务文章
	
	@Resource
	private UserWebService userWebService;//专家、律师等(之前没有表设计，故共用用户表)
	
	/**
	 * 查询主页数据跳转
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("")
	public ModelAndView index(HttpServletRequest request) throws Exception{
		
		ModelAndView mv = this.getModelAndView();
		
		PageData pd =super.getPageData();
		pd.put("from", 0);
		pd.put("size", 6);
		
		List<Credit> creditList1 = creditWebService.creditlist(pd);//债权信息
		List<Credit> creditList2 = creditWebService.creditlist(pd);//债权转让
		
		//行业动态、业务文章 
		pd.put("blogType", 1);
		List<Blog> blogList1 = blogWebService.bloglist(pd);
		pd.put("blogType", 2);
		List<Blog> blogList2 = blogWebService.bloglist(pd);
		
		pd.put("userLevel", 99);//专家、律师、财经法制媒体人
		pd.put("userStatus", 7);
		List<User> userList1 = userWebService.findPartUserList(pd);
		pd.put("userStatus", 8);
		List<User> userList2 = userWebService.findPartUserList(pd);
		pd.put("userStatus", 9);
		List<User> userList3 = userWebService.findPartUserList(pd);
		
		mv.addObject("creditList1",creditList1);
		mv.addObject("creditList2",creditList2);
		
		mv.addObject("blogList1",blogList1);
		mv.addObject("blogList2",blogList2);
		
		mv.addObject("userList1",userList1);
		mv.addObject("userList2",userList2);
		mv.addObject("userList3",userList3);
		if(MozillaUtil.isMobileDevice(request)){//如果是手机访问
			mv.setViewName("mobile/index");
		}else{
			mv.setViewName("index_main");
		}
		return mv;
	}
}
