package com.credit.web.credit.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import com.credit.web.common.tag.PageInfo;
import com.credit.web.common.tag.PageUtil;
import com.credit.web.entity.Credit;
import com.gvtv.manage.base.dao.BaseDao;
import com.gvtv.manage.base.util.AppUtil;
import com.gvtv.manage.base.util.Const;
import com.gvtv.manage.base.util.PageData;
import com.gvtv.manage.base.util.StringUtils;

@Transactional(readOnly=true)
@Service("creditWebService")
public class CreditWebService {
	@Resource(name = "BaseDao")
	private BaseDao dao;
	
	/**
	 * 查询债权分页信息
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public PageData pageList(PageData pd) throws Exception{
		PageData result = new PageData();
		String search = pd.getString("keyword");
		if (StringUtils.isNotEmpty(search)) {
			pd.put("keyword", "%" + search + "%");
		}
		int totalNum = (int) dao.findForObject("CreditMapper.count", pd);
		
		Integer pageNo=  pd.getInteger("pageNo");
		PageUtil pu = new PageUtil(totalNum,pageNo,10);
		PageInfo pageInfo = pu.getPageInfo();
		pageInfo.setRangeSize(20);
		if(pageNo==0){
			pd.put("from",0);
			pd.put("size", 10);	
		}else{
			pd.put("from",(pageInfo.getPageNo()-1)*pageInfo.getPageSize());
			pd.put("size", pageInfo.getPageNo()*pageInfo.getPageSize());	
		}

		
		List<Credit> pds = dao.findForList("CreditMapper.list", pd);
		
		
	
		result.put("pageInfo", pageInfo);
		result.put(Const.NDATA, pds);
		return result; 
	}
	
	/**
	 * 查询债权列表信息
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public List<Credit> creditlist(PageData pd) throws Exception {
		List<Credit> creditList = dao.findForList("CreditMapper.list", pd);
		return creditList;
	}
	
	/**
	 * 
	 * @author huixiong 
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public Boolean creditSave(PageData pd) throws Exception {
		int num = dao.save("CreditMapper.creditSave", pd);
		if(num>0){
			return true;
		}
		return false;
	}
	
	
	public Credit findById(Integer id)throws Exception {
		Credit credit = dao.findForObject("CreditMapper.findById", id);
		return credit;
	}

}
