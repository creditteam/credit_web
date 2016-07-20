<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快易收债权管理|资信查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<jsp:include page="mobile_meta.jsp"></jsp:include>
	
  </head>
  <body>
    <div class="main-container" id="portfolio">
    	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
		<div class="container"><p class="lead text-center" style="font-weight: 900">全国资信查询</p></div>
		<div class="container">
		
		<div id="content" class="tab-content" >
		    <!-- tab1 -->
		    <div id="expert_tab1" class="tab-pane fade in active">
			    	<table class="table table-bordered">
			    		<tr>
			    			<td><div class="media">
								  <a class="pull-left" href="http://shixin.court.gov.cn/" target="_blank">
								  <img src="hplus/img/xzcx/zx1.png" style="width: 80px; height: 80px" alt="" class="img-thumbnail"/>
								  </a>
								  <div class="media-body">
								    <h4 class="media-heading">&nbsp;</h4>
								    	 <a href="http://shixin.court.gov.cn/" target="_blank">失信被执行人查询</a>
								  </div>
								</div>
							</td>
			    		</tr>
			    		<tr>
			    			<td>
			    				<div class="media">
								  <a class="pull-left" target="_blank" href="http://sbj.saic.gov.cn/sbcx/">
								  <img src="hplus/img/xzcx/zx8.png" style="width: 80px; height: 80px" alt="" class="img-thumbnail"/>
								  </a>
								  <div class="media-body">
								    <h4 class="media-heading">&nbsp;</h4>
								    	<a target="_blank" href="http://sbj.saic.gov.cn/sbcx/">商标注册信息查询</a>
								  </div>
								</div>
			    			</td>
			    		</tr>
			    		<tr>
			    			<td>
			    				<div class="media">
								  <a class="pull-left" target="_blank" href="http://www.nacao.org.cn/publish/main/85/index.html">
								  <img src="hplus/img/xzcx/zx3.png" style="width: 80px; height: 80px" alt="" class="img-thumbnail"/>
								  </a>
								  <div class="media-body">
								    <h4 class="media-heading">&nbsp;</h4>
								    	<a target="_blank" href="http://www.nacao.org.cn/publish/main/85/index.html">组织机构信息查询</a>
								  </div>
								</div>
			    			</td>
			    		</tr>
			    		<tr>
			    			<td>
			    				<div class="media">
								  <a class="pull-left" target="_blank" href="http://publicquery.sipo.gov.cn/index.jsp?language=zh_CN">
								  <img src="hplus/img/xzcx/zx7.png" style="width: 80px; height: 80px" alt="" class="img-thumbnail"/>
								  </a>
								  <div class="media-body">
								    <h4 class="media-heading">&nbsp;</h4>
								    	<a target="_blank" href="http://publicquery.sipo.gov.cn/index.jsp?language=zh_CN">司法文书查询</a>
								  </div>
								</div>
			    			</td>
			    		</tr>
			    		<tr>
			    			<td>
			    				<div class="media">
								  <a class="pull-left" target="_blank" href="http://www.pbccrc.org.cn/zxzx/grzx/list.shtml">
								  <img src="hplus/img/xzcx/zx9.png" style="width: 80px; height: 80px" alt="" class="img-thumbnail"/>
								  </a>
								  <div class="media-body">
								    <h4 class="media-heading">&nbsp;</h4>
								    	<a target="_blank" href="http://www.pbccrc.org.cn/zxzx/grzx/list.shtml">个人、企业征信查询</a>
								  </div>
								</div>
			    			</td>
			    		</tr>
			    		<tr>
			    			<td>
			    				<div class="media">
								  <a class="pull-left" target="_blank" href="http://gsxt.saic.gov.cn/">
								  <img src="hplus/img/xzcx/zx10.png" style="width: 80px; height: 80px" alt="" class="img-thumbnail"/>
								  </a>
								  <div class="media-body">
								    <h4 class="media-heading">&nbsp;</h4>
								    	<a target="_blank" href="http://gsxt.saic.gov.cn/">企业信用信息查询</a>
								  </div>
								</div>
			    			</td>
			    		</tr>
			    	</table>
			</div>
		</div>
	</div>
</div>
	
	<div class="subfooter" style="background-color: #0b6070; margin-top: 50px"></div>

<jsp:include page="mobile_footer.jsp"></jsp:include>
</body>
</html>
