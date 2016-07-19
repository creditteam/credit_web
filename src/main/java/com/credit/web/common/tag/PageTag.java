package com.credit.web.common.tag;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import com.gvtv.manage.base.util.PageData;

@SuppressWarnings("serial")
public class PageTag extends BodyTagSupport {

	private String href; //分页请求地址
	private String pageType;//
	public int doEndTag() throws JspException {

		JspWriter out = pageContext.getOut();
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		PageData pageData = (PageData) request.getAttribute("pd");
		
		if (pageData != null) {
			PageInfo pageInfo = (PageInfo) pageData.get("pageInfo");
			StringBuilder html=new StringBuilder();

		    int first = pageInfo.getRangeOfFirst();
		    int end = pageInfo.getRangeOfEnd();
		    
		    if(this.pageType.equals("pc")){
			    initPageHtmlForPc(pageInfo, html, first, end);
		    }else if(this.pageType.equals("mobile")){
		    	initPageHtmlForMobile(pageInfo, html, first, end);
		    }
		    

			try {
				out.write(html.toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
		} 
		return super.doEndTag();

	}

	private void initPageHtmlForMobile(PageInfo pageInfo, StringBuilder html, int first, int end) {
		html.append("<div class='text-center'>");
		html.append("<form action='"+this.href+"' method='post' id='pageForm' target='_self'>");
		html.append("<input type='hidden' name='pageNo' id='pageNo' value='"+pageInfo.getPageNo()+"'>");
		html.append("<input type='hidden' name='pageSize' value='"+pageInfo.getPageSize()+"'>");
		html.append("</form>");
		html.append("<ul class='pagination'>");
		html.append("<li><a href='javascript:void(0)' onclick='pageSubmit("+(pageInfo.getPageNo()-1)+")'>&laquo;</a></li>");
		for (int i=first;i<=end;i++)
		{
			html.append("<li><a href='javascript:void(0)' onclick='pageSubmit("+i+")'>1</a></li>");
		}
		html.append("<li><a href='javascript:void(0)' onclick='pageSubmit("+(pageInfo.getPageNo()+1)+")'>&raquo;</a></li>");
		html.append("</ul>");
		html.append(" </div>");
	}
    
	private void initPageHtmlForPc(PageInfo pageInfo, StringBuilder html, int first, int end) {
		html.append("<form action='"+this.href+"' method='post' id='pageForm' target='_self'>");
		html.append("<input type='hidden' name='pageNo' id='pageNo' value='"+pageInfo.getPageNo()+"'>");
		html.append("<input type='hidden' name='pageSize' value='"+pageInfo.getPageSize()+"'>");
		html.append("<div class='text-center'>");
		html.append("<div class='btn-group'>");
		html.append("<button class='btn btn-white'  onclick='pageSubmit("+(pageInfo.getPageNo()-1)+")'><i class='fa fa-chevron-left'></i></button>");
		for (int i=first;i<=end;i++)
		{
			if(pageInfo.getPageNo()==i){
				html.append("<button class='btn btn-white active' onclick='pageSubmit("+i+")'>"+i+"</button>");
			}else{
				html.append("<button class='btn btn-white' onclick='pageSubmit("+i+")'>"+i+"</button>");
			}
		}
		html.append("<button class='btn btn-white'    onclick='pageSubmit("+(pageInfo.getPageNo()+1)+")'><i class='fa fa-chevron-right'></i></button>");
		html.append(" </div>");
		html.append(" </div>");
		html.append(" </form>");
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public String getPageType() {
		return pageType;
	}

	public void setPageType(String pageType) {
		this.pageType = pageType;
	}
}
