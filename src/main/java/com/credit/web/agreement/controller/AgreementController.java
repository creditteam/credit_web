package com.credit.web.agreement.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.credit.web.agreement.service.AgreementWebService;
import com.credit.web.credit.service.CreditWebService;
import com.credit.web.entity.Agreement;
import com.credit.web.entity.Credit;
import com.credit.web.filemanager.service.UploadFileService;
import com.credit.web.util.DataUtil;
import com.gvtv.manage.base.controller.BaseController;
import com.gvtv.manage.base.util.PageData;

@Controller
@RequestMapping(value="/agreement")
public class AgreementController extends BaseController{

	private static Logger logger = LoggerFactory.getLogger(AgreementController.class);
	
	@Resource
	private AgreementWebService agreementWebService;
	@Resource
	private UploadFileService uploadFileService;
	@Resource
	private CreditWebService creditWebService;
	
	
	@RequestMapping(value="/list")
	@ResponseBody
	public List<Agreement> list(){
		List<Agreement> result = null;
		try {
			PageData pd = super.getPageData();
			result = agreementWebService.list(pd);
		} catch (Exception e) {
			logger.error("list agree error", e);
			result = new ArrayList<Agreement>();
		}
		return result;
	}
	
	@RequestMapping(value="/addOrUpd", method=RequestMethod.POST)
	public PageData saveOrUpd(Agreement agree){
		PageData result = new PageData();
		try{
			String images = "";
			String path = super.getRequest().getSession().getServletContext().getRealPath("/");
			if(null != agree.getUploadFiles()){
				for(int i=0;i< agree.getUploadFiles().length;i++){
					if(0 != agree.getUploadFiles()[i].getSize()){
						String newFileName = DataUtil.getRandomStr();
						String fileName = agree.getUploadFiles()[i].getOriginalFilename();
						fileName = "agree"+newFileName + fileName.substring(fileName.lastIndexOf("."), fileName.length());
						uploadFileService.uploadFile(path+"uploadFile/agree", agree.getUploadFiles()[i], fileName);
						if(i == 0){
							images += "uploadFile/agree/"+fileName;
						}else{
							images += ";uploadFile/agree/"+fileName;
						}
					}
				}
				agree.setAgreeImg(images);
			}
			agree.setSignStatus((short)1);
			agree.setSignTime(new Date());
			agreementWebService.deleteByCreditId(agree);
			agreementWebService.saveAgree(agree);
			result.put("status", 1);
		}catch(Exception e){
			logger.error("addOrUpd agree error", e);
			result.put("status", 0);
			result.put("msg", "操作失败");
		}
		return result;
	}
	
	@RequestMapping(value="/delete")
	@ResponseBody
	public PageData delete(Integer id){
		PageData result = new PageData();
		try{
			int line = agreementWebService.deleteById(id);
			if(line>0){
				result.put("status", 1);
			}else{
				result.put("status", 0);
				result.put("msg", "删除失败或者为不可删除状态");
			}
		}catch(Exception e){
			logger.error("delete agree error", e);
			result.put("status", 0);
			result.put("msg", "删除失败");
		}
		return result;
	}

	@RequestMapping(value="/delebyCredit")
	@ResponseBody
	public PageData delebyCredit(Integer creditId,Short agreeType){
		PageData result = new PageData();
		try{
			Agreement agree = new Agreement();
			agree.setCreditId(creditId);
			agree.setAgreeType(agreeType);
			int line = agreementWebService.deleteByCreditId(agree);
			if(line>0){
				result.put("status", 1);
			}else{
				result.put("status", 0);
				result.put("msg", "删除失败或者为不可删除状态");
			}
		}catch(Exception e){
			logger.error("delete agree error", e);
			result.put("status", 0);
			result.put("msg", "删除失败");
		}
		return result;
	}
	
	@RequestMapping(value="/updStatus")
	@ResponseBody
	public PageData updStatus(Integer userId,Integer creditId){
		PageData result = new PageData();
		try{
			Agreement agree = new Agreement();
			agree.setCreditId(creditId);
			agree.setUserId(userId);
			agree.setAgreeType((short)1);
			agree.setSignStatus((short)1);
			agreementWebService.updateAgreeStatus(agree);
			
			if(null != creditId){
				Credit credit = new Credit();
				credit.setId(creditId);
				credit.setCrStatus((short)3);
				creditWebService.updateStatus(credit);
			}
			result.put("status", 1);
		}catch(Exception e){
			logger.error("update agree error", e);
			result.put("status", 0);
			result.put("msg", "删除失败");
		}
		return result;
	}
	
	/**
	 * 查看居间服务协议(前期)
	 * @return
	 */
	@RequestMapping(value="/lookAgree")
	public ModelAndView lookAgreement(Integer userId,Integer creditId,Short agreeType){
		ModelAndView mv = super.getModelAndView();
		mv.addObject("userId",userId);
		mv.addObject("creditId",creditId);
		mv.addObject("agreeType",agreeType);
		mv.setViewName("/user/credit_agreement");
		return mv;
	}
	
}
