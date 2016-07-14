package com.credit.web.credit.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.credit.web.entity.Credit;
import com.gvtv.manage.base.dao.BaseDao;
import com.gvtv.manage.base.util.AppUtil;
import com.gvtv.manage.base.util.Const;
import com.gvtv.manage.base.util.PageData;

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
		if (StringUtils.isNotBlank(search)) {
			pd.put("keyword", "%" + search + "%");
		}
		int totalNum = (int) dao.findForObject("CreditMapper.count", pd);
		
		pd.put("from", pd.getInteger("from"));
		pd.put("size", pd.getInteger("size"));
		List<Credit> pds = dao.findForList("CreditMapper.list", pd);
		//AppUtil.nullToEmpty(pds, new String[]{"menuId", "menuName", "menuUrl", "menuOrder", "description"});
		
		result.put(Const.DRAW, pd.getString(Const.DRAW));
		result.put("from", pd.getInteger("from"));
		result.put(Const.RECORDSTOTAL, totalNum);
		result.put(Const.RECORDSFILTERED, totalNum);
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
