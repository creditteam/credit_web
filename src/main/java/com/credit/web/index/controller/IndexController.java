package com.credit.web.index.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.blog.service.BlogWebService;
import com.credit.web.credit.service.CreditWebService;
import com.credit.web.entity.Blog;
import com.credit.web.entity.Credit;
import com.credit.web.entity.Sample;
import com.credit.web.entity.User;
import com.credit.web.sample.service.SampleWebService;
import com.credit.web.user.service.UserWebService;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.MozillaUtil;
import com.gvtv.manage.base.util.PageData;
import com.gvtv.manage.base.util.SensitiveUtil;

@Controller
public class IndexController extends BaseController{
	
	@Resource
	private CreditWebService creditWebService;//债权
	
	@Resource
	private BlogWebService blogWebService;//业务文章
	
	@Resource
	private UserWebService userWebService;//专家、律师等(之前没有表设计，故共用用户表)
	
	@Resource
	SampleWebService sampleWebService;
	
	@RequestMapping(value="/index")
	public ModelAndView index()throws Exception{
		ModelAndView mv = super.getModelAndView();
		
		PageData pd =super.getPageData();
		pd.put("from", 0);
		pd.put("size", 6);
		
		pd.put("creditType", 1);
		List<Credit> creditdisposalList = creditWebService.creditlist(pd);//债权信息
		List<Credit> disposalList = new ArrayList<Credit>();
		shieldDeptName(creditdisposalList, disposalList);
		
		pd.put("creditType", 2);
		List<Credit> credittransferList = creditWebService.creditlist(pd);//债权转让
		List<Credit> transferList = new ArrayList<Credit>();
		shieldDeptName(credittransferList, transferList);
				
		pd.put("userLevel", 99);//专家、律师、财经法制媒体人
		pd.put("userStatus", 7);
		List<User> userList1 = userWebService.findPartUserList(pd);
		pd.put("userStatus", 8);
		List<User> userList2 = userWebService.findPartUserList(pd);
		pd.put("userStatus", 9);
		List<User> userList3 = userWebService.findPartUserList(pd);
		
		pd.put("size", 0);
		List<Sample> sampleList = sampleWebService.list(pd);
		List<Sample> sampleListAl = new ArrayList<Sample>();
		List<Sample> sampleListXs = new ArrayList<Sample>();
		for(int i = 0 ;i < sampleList.size();i++){
			Sample sample =  sampleList.get(i);
			if(sample.getSamType() == (short)2){
				sampleListXs.add(sample);
			}else if(sample.getSamType()==1){
				sampleListAl.add(sample);
			}
		}
		
		
		//行业动态、业务文章 
		pd.put("from",0);
		pd.put("size", 4);	
		pd.put("blogType", 1);
		List<Blog> blogList1 = blogWebService.bloglist(pd);
		pd.put("blogType", 2);
		List<Blog> blogList2 = blogWebService.bloglist(pd);
		
		mv.addObject("creditdisposalList",disposalList);
		mv.addObject("credittransferList",transferList);
		
		mv.addObject("blogList1",blogList1);
		mv.addObject("blogList2",blogList2);
		
		mv.addObject("userList1",userList1);
		mv.addObject("userList2",userList2);
		mv.addObject("userList3",userList3);
		
		mv.addObject("sampleList",sampleListAl);
		mv.addObject("sampleList1",sampleListXs);
		
		Boolean isMobile = MozillaUtil.isMobileDevice(super.getRequest());
		if(isMobile){
			mv.setViewName("mobile/index");
		}else{
			mv.setViewName("index_main");
		}
		
		return mv;
	}

	/**
	 * 屏蔽债权人名称
	 * @param creditdisposalList
	 * @param disposalList
	 */
	private void shieldDeptName(List<Credit> creditdisposalList, List<Credit> disposalList) {
		for (int i = 0; i < creditdisposalList.size(); i++) {
			Credit credit =creditdisposalList.get(i);
			if(credit!=null){
				if(credit.getDeptType()==1){
					String debtName = SensitiveUtil.shieldName(credit.getDebtName());
					credit.setDebtName(debtName);
				}else{
					String debtName = SensitiveUtil.shieldCompany(credit.getDebtName());
					credit.setDebtName(debtName);				
				}
				disposalList.add(credit);
			}
		}
	}
	
	@RequestMapping(value="/product")
	public String to_product(){
		return "/mobile/product";
	}
	@RequestMapping(value="/cooperate")
	public String to_cooperate(){
		return "/mobile/cooperate";
	}
	@RequestMapping(value="/zixin")
	public String to_zixin(){
		return "/mobile/zixin_index";
	}
	@RequestMapping(value="/flow")
	public String to_handflow(){
		return "/mobile/handFlow";
	}
	@RequestMapping(value="/register_success")
	public String register_success(){
		return "/register_success";
	}
}
