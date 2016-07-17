package com.credit.web.feedback.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.entity.Credit;
import com.credit.web.feedback.service.FeedbackWebService;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/feedback")
public class FeedbackController  extends BaseController{
	
	@Resource
	private FeedbackWebService feedbackWebService;

	/**
	 * 保存债权信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/feedbackSave",method =RequestMethod.POST)
	public ModelAndView feedbackSave(Credit credit) throws Exception{
		PageData pd =super.getPageData();
		Boolean isFlag=feedbackWebService.feedbackSave(pd);
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("/help/help");			
		return mv;
	}
}
