package com.credit.web.sample.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.entity.Sample;
import com.credit.web.sample.service.SampleWebService;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/sample")
public class SampleController extends BaseController{

	private static Logger logger = LoggerFactory.getLogger(SampleController.class);
	@Resource
	private SampleWebService sampleWebService;
	
	/**
	 * 跳转到添加或修改页面
	 * @return
	 */
	@RequestMapping(value="/toAddOrUpd")
	public ModelAndView addOrUpd(Integer id){
		ModelAndView mv = super.getModelAndView();
		if(null != id){
			try{
				Sample sample = sampleWebService.findById(Integer.valueOf(id));
				mv.addObject("sample",sample);
			}catch(Exception e){
				logger.error("toadd sample error", e);
			}
		}else{
			
		}
		mv.setViewName("credit/sample/sample_addOrUpd");
		return mv;
	}
	
	/**
	 * 跳转到列表
	 * @return
	 */
	@RequestMapping(value="/page")
	public ModelAndView page(){
		ModelAndView mv = super.getModelAndView();
		mv.setViewName("credit/sample/sample_list");
		return mv;
	}
	
	/**
	 * 分页信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	@ResponseBody
	public PageData list(){
		PageData result = null;
		try {
			PageData pd = super.getPageData();
			result = sampleWebService.pageList(pd);
		} catch (Exception e) {
			logger.error("list sample error", e);
			result = new PageData();
		}
		return result;
	}
	/**
	 * 详细信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/detail")
	public ModelAndView blogDetails(Integer id) throws Exception{
		
		Sample sample = sampleWebService.findById(id);
		ModelAndView mv = this.getModelAndView();
		mv.addObject(sample);
		mv.setViewName("credit/sample/sample_detail");
		return mv;
	}
	
	
}
