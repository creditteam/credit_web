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
import com.credit.web.entity.User;
import com.credit.web.filemanager.service.UploadFileService;
import com.credit.web.reward.service.RewardWebService;
import com.credit.web.user.service.UserWebService;
import com.credit.web.util.DataUtil;
import com.credit.web.util.ProvinceEnum;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.MozillaUtil;
import com.gvtv.manage.base.util.PageData;
import com.gvtv.manage.base.util.SensitiveUtil;

@Controller
@RequestMapping(value="/reward")
public class RewardController extends BaseController{

	@Resource
	private RewardWebService rewardWebService;
	
	@Resource
	UploadFileService uploadFileService;
	@Resource
	private UserWebService userWerService;
	
	/**
	 * 导航债权首页
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/navlist")
	public ModelAndView navlist(HttpServletRequest request) throws Exception{
		PageData pd =super.getPageData();
		User user =(User) request.getSession().getAttribute("userInfo");
		if(user!=null){
			pd.put("userId", user.getId());
		}
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
		PageData pd =super.getPageData();
		User user =(User) request.getSession().getAttribute("userInfo");
		if(user!=null){
			pd.put("userId", user.getId());
		}
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
			mv.setViewName("/mobile/user_reward_add");
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
		String images = "";
		if(null != reward.getUploadFiles()){
			for(int i=0;i< reward.getUploadFiles().length;i++){
				if(0 != reward.getUploadFiles()[i].getSize()){
					
					String newFileName = DataUtil.getRandomStr();
					String fileName = reward.getUploadFiles()[i].getOriginalFilename();
					fileName = "reward"+newFileName + fileName.substring(fileName.lastIndexOf("."), fileName.length());
					
					bool = uploadFileService.uploadFile(path+"uploadFile/reward", reward.getUploadFiles()[i], fileName);
					if(i == 0){
						images += "uploadFile/reward/"+fileName;
					}else{
						images += ";uploadFile/reward/"+fileName;
					}
				}else{
					bool = true;
				}
			}
		}
		reward.setImages(images);
		/*if(0 != reward.getUploadFile().getSize()){
			bool = uploadFileService.uploadFile(path+"uploadFile\\reward", reward.getUploadFile(), reward.getUploadFile().getOriginalFilename());
			reward.setImages(path+"uploadFile\\credit\\"+reward.getUploadFile().getOriginalFilename());
		}else{
			bool = true;
		}*/
		reward.setCreateTime(new Date());
		rewardWebService.rewardSave(reward);
		if(MozillaUtil.isMobileDevice(request)){
			if(bool){//如果上传保存成功 
				return "redirect:/reward/list?userId="+reward.getUserId();
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
			User user = null;
			Reward reward = rewardWebService.findById(Integer.valueOf(id));
			if(null != reward.getUserId()){
				user = userWerService.getUserById(reward.getUserId());
			}
			if(null != reward.getImages()){
				reward.setImagesArry(reward.getImages().split(";"));
			}
			if(null == user){
				user = new User();
				user.setNickname("未找到发布者信息");
			}else{
				/*user.setNickname(SensitiveUtil.shieldName(user.getNickname()));
				user.setUserPhone(SensitiveUtil.shieldPhone(user.getUserPhone()));*/
			}
			ModelAndView mv = this.getModelAndView();
			mv.addObject("user",user);
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
			User user = null;
			if(reward!=null){
				reward.setRewardName(SensitiveUtil.shieldName(reward.getRewardName()));
				reward.setCartId(SensitiveUtil.shieldCartID(reward.getCartId()));
				if(null != reward.getUserId()){
					user = userWerService.getUserById(reward.getUserId());
				}
			}			
			if(null == user){
				user = new User();
				user.setNickname("未找到发布者信息");
			}else{
				user.setNickname(SensitiveUtil.shieldName(user.getNickname()));
				user.setUserPhone(SensitiveUtil.shieldPhone(user.getUserPhone()));
			}
			ModelAndView mv = this.getModelAndView();
			mv.addObject("reward", reward);
			mv.addObject("user",user);
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
			if(reward!=null){
				//reward.setRewardName(SensitiveUtil.shieldName(reward.getRewardName()));
				reward.setCartId(SensitiveUtil.shieldCartID(reward.getCartId()));
			}
			if(null != reward.getImages()){
				reward.setImagesArry(reward.getImages().split(";"));
			}
			return reward;
		}
		return null;
	}
	
}
