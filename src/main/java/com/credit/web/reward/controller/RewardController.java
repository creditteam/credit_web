package com.credit.web.reward.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.entity.Reward;
import com.credit.web.reward.service.RewardWebService;
import com.credit.web.util.ProvinceEnum;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.MozillaUtil;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/reward")
public class RewardController extends BaseController{

	@Resource
	private RewardWebService rewardWebService;
	
	
	
	/**
	 * 导航债权首页
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/navlist")
	public ModelAndView navlist(HttpServletRequest request) throws Exception{
		String userId =request.getParameter("userId");
		PageData pd =super.getPageData();
		pd.put("from", 0);
		pd.put("size", 10);
		pd = rewardWebService.pageList(pd);
		
		ModelAndView mv = this.getModelAndView();
		mv.addObject("pd", pd);
		Boolean isMobile = MozillaUtil.isMobileDevice(super.getRequest());
		if(isMobile){
			mv.setViewName("mobile/index");
		}else{
			mv.setViewName("/reward/reward_list");
		}
		return mv;
	}
	
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
		pd = rewardWebService.pageList(pd);
		
		ModelAndView mv = this.getModelAndView();
//		mv.addObject("rewardList", rewardList);
		mv.addObject("pd", pd);
		mv.setViewName("/user/user_reward_list");
		return mv;
	}
	
	
	/**
	 * 调整到新增悬赏页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/saveReward",method =RequestMethod.GET)
	public ModelAndView toSaveReward() throws Exception{
		String userId =super.getRequest().getParameter("userId");
		List<String> provinceList = ProvinceEnum.takeAllValues();//省份list
		ModelAndView mv = this.getModelAndView();
		mv.addObject("userId", userId);
		mv.addObject("provinceList", provinceList);
		mv.setViewName("/user/user_reward_add");
		return mv;
	}
	
	/**
	 * 新增悬赏信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/saveReward",method =RequestMethod.POST)
	public String saveReward() throws Exception{
		PageData pd =super.getPageData();
		pd.put("rewardStatus", 1);
		rewardWebService.rewardSave(pd);
		return "redirect:/reward/list";
	}
	
	/**
	 * 查询悬赏详情
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/rewardDetails",method =RequestMethod.GET)
	public ModelAndView rewardDetails() throws Exception{
		String id =super.getRequest().getParameter("id");
		if(id!=null&&id!=""){
			Reward reward = rewardWebService.findById(Integer.valueOf(id));
			ModelAndView mv = this.getModelAndView();
			mv.addObject("reward", reward);
			mv.setViewName("/user/user_reward_details");
			return mv;
		}
		return null;
	}
	
	/**
	 * 查询悬赏详情(为登录时查看)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/navRewardDetails",method =RequestMethod.GET)
	public ModelAndView navRewardDetails() throws Exception{
		String id =super.getRequest().getParameter("id");
		if(id!=null&&id!=""){
			Reward reward = rewardWebService.findById(Integer.valueOf(id));
			ModelAndView mv = this.getModelAndView();
			mv.addObject("reward", reward);
			mv.setViewName("/reward/reward_details");
			return mv;
		}
		return null;
	}
	
}
