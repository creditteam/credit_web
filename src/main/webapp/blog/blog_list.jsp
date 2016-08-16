<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";//
pageContext.setAttribute("basePath", basePath);
%>
  <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <h2><c:if test="${pd.blogType eq 1}">媒体报道</c:if>
                        	<c:if test="${pd.blogType eq 2}">业务文章</c:if></h2>
                        <c:forEach items="${pd.data}" var="item">
	                        <div class="hr-line-dashed"></div>
	                        <c:if test="${pd.blogType eq 1}">
		                        <div class="search-result">
		                            <h3><a href="${item.blogSource}" style="color:#676A6C">${item.blogTitle}</a></h3>
		                            <p>
		                              <a href="${item.blogSource}"><img alt="" src="${basePath}${item.blogAuthor}" width="80px" height="60px"></a>
										<span style="margin-left: 15px">${fn:substring(item.blogContext,0,50)}...</span>
		                            </p>
		                        </div>
	                        </c:if>
	                        <c:if test="${pd.blogType eq 2}">
		                        <div class="search-result">
		                            <h3><a href="${basePath}/blog/details?id=${item.id}">&nbsp;&nbsp;${item.blogTitle}</a></h3>
		                            <p>
		                              &nbsp;&nbsp;&nbsp;&nbsp;${fn:substring(item.blogContext,0,65)}...
		                            </p>
		                        </div>
	                        </c:if>
                        </c:forEach>
                        <div class="hr-line-dashed"></div>
                        <gvtv:newPage href="${basePath }blog/list?blogType=1" pageType="pc"></gvtv:newPage>
                    </div>
                </div>
            </div>
        </div>