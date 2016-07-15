package com.credit.web.blog.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.blog.service.BlogWebService;
import com.credit.web.entity.Blog;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.MozillaUtil;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/blog")
public class BlogController extends BaseController{

	@Resource
	private BlogWebService blogWebService;
	
	/**
	 * 业务资讯分页信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(HttpServletRequest request) throws Exception{
		//String userId =request.getParameter("userId");
		String from = request.getParameter("from");
		String blogType = request.getParameter("blogType");
		PageData pd =super.getPageData();
		pd.put("from", 0);
		pd.put("size", 20);
		pd.put("blogType", blogType);
		pd = blogWebService.pageList(pd);
		
		ModelAndView mv = this.getModelAndView();
		pd.put("from", Integer.valueOf(from));
		mv.addObject("pd", pd);
		mv.setViewName("/blog/blog");
		return mv;
	}
	
	/**
	 * 业务资讯分页信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mlList")
	public ModelAndView mlList(HttpServletRequest request) throws Exception{
		//String userId =request.getParameter("userId");
		//String from = request.getParameter("from");
		PageData pd =super.getPageData();
		ModelAndView mv = this.getModelAndView();
		
		List<Blog> blogList = new ArrayList<Blog>();
		
		pd.put("from", 0);
		pd.put("size", 20);
		pd.put("blogType", 1);
		blogList = blogWebService.bloglist(pd);
		mv.addObject("blogList1", blogList);
		
		pd.put("blogType", 2);
		blogList = blogWebService.bloglist(pd);
		mv.addObject("blogList2", blogList);
		
		mv.setViewName("/mobile/blog");
		return mv;
	}
	
	/**
	 * 业务资讯详细信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/details")
	public ModelAndView blogDetails(Integer id) throws Exception{
		
		Blog blog = blogWebService.findById(id);
		ModelAndView mv = this.getModelAndView();
		mv.addObject(blog);
		
		if(MozillaUtil.isMobileDevice(super.getRequest())){
			mv.setViewName("mobile/ml_blogDetails");
		}else{
			mv.setViewName("blog/blog_details");
		}
		return mv;
	}
	
	
}
