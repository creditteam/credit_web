package com.credit.web.reward.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.entity.Reward;
import com.credit.web.filemanager.service.UploadFileService;
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
	
	@Resource
	UploadFileService uploadFileService;
	
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
			mv.setViewName("/mobile/reward_list");
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
		Boolean isMobile = MozillaUtil.isMobileDevice(super.getRequest());
		mv.addObject("pd", pd);
		if(isMobile){
			mv.setViewName("/mobile/user_reward_list");
		}else{
			mv.setViewName("/user/user_reward_list");
		}
		return mv;
	}
	
	
	/**
	 * 跳转到新增悬赏页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/saveReward",method =RequestMethod.GET)
	public ModelAndView toSaveReward() throws Exception{
		String userId =super.getRequest().getParameter("userId");
		List<String> provinceList = ProvinceEnum.takeAllValues();//省份list
		
		ModelAndView mv = this.getModelAndView();
		mv.addObject("provinceList", provinceList);
		mv.addObject("userId", userId);
		if(MozillaUtil.isMobileDevice(super.getRequest())){
			mv.setViewName("/mobile/reward_add");
		}else{
			mv.setViewName("/user/user_reward_add");
		}
		return mv;
	}
	
	/**
	 * 新增悬赏信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/saveReward",method =RequestMethod.POST)
	public String saveReward(Reward reward) throws Exception{
		
		HttpServletRequest request = super.getRequest();
		
		reward.setRewardStatus((short)1);
		reward.setCreateTime(new Date());
		String path = request.getSession().getServletContext().getRealPath("/");
		Boolean bool = false;
		if(null!= reward.getUploadFile()){
			bool = uploadFileService.uploadFile(path+"uploadFile\\reward", reward.getUploadFile(), reward.getUploadFile().getOriginalFilename());
		}
		
		rewardWebService.rewardSave(reward);
		if(MozillaUtil.isMobileDevice(request)){
			if(bool){//如果上传保存成功 
				return "redirect:/reward/list";
			}else{
				return "redirect:/reward/saveReward";
			}
		}else{
			return "redirect:/reward/list";
		}
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
	
	/**
	 * 查询悬赏详情(未登录时查看)(异步)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mlRewardInfo")
	@ResponseBody
	public Reward mlRewardDetails(String id) throws Exception{
		Reward reward = null;
		if(id!=null&&id!=""){
			reward = rewardWebService.findById(Integer.valueOf(id));
			return reward;
		}
		return null;
	}
	
}
