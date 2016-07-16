<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收|用户中心</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"><!-- Mobile Meta -->
	<jsp:include page="mobile_meta.jsp"></jsp:include>
  </head>
  
  <body>
  <div class="main-container" style="height: 100%">
  
    <jsp:include page="mobile_top_logo.jsp"></jsp:include><br/>
    	<div class="row">
    		
    		<div class="col-md-12" style="height:80px;line-height:80px;overflow:hidden;background-image: url(${basePath}hplus/img/ad_27.jpg);">
    			<table width="98%" height="98%">
    				<tr>
    					<td align="left">
    						<img alt="" src="${basePath}hplus/img/yh_01.png" class="img-circle" style="width: 70px;height:70px;"/>
    						欢迎：<c:if test="${not empty userInfo}">${userInfo.nickname}</c:if>
    					</td>
    					<td align="right">
    						<span><b>></b>&nbsp;&nbsp;</span>
    					</td>
    				</tr>
    			</table>
    		</div>
    	</div>
    	<div class="row">
	    	<div class="col-md-12">
	   			<table class="table table-bordered" width="98%" style="margin-top: 10px;border-left: 0px;border-right: 0px;">
	   				<tbody>
		   				<tr valign="middle">
		   					<td align="left" style="border-left: 0px;border-right: 0px;">
		   						&nbsp;&nbsp;<img alt="" src="${basePath}hplus/img/bj03.png" class="img-circle" style="width: 30px;height:30px;">&nbsp;债权信息
		   					</td>
		   					<td align="right" style="border-left: 0px;border-right: 0px;">
		   						<span><b>></b>&nbsp;&nbsp;</span>
		   					</td>
		   				</tr>
		   				<tr valign="middle">
		   					<td align="left" style="border-left: 0px;border-right: 0px;">
		   						&nbsp;&nbsp;<img alt="" src="${basePath}hplus/img/bj02.png" class="img-circle" style="width: 30px;height:30px;">&nbsp;债权转让
		   					</td>
		   					<td align="right" style="border-left: 0px;border-right: 0px;">
		   						<span><b>></b>&nbsp;&nbsp;</span>
		   					</td>
		   				</tr>
		   				<tr valign="middle">
		   					<td align="left" style="border-left: 0px;border-right: 0px;" valign="middle">
		   						&nbsp;&nbsp;<img alt="" src="${basePath }hplus/img/bj10.png" class="img-circle" style="width: 30px;height:30px;">&nbsp;悬赏信息
		   					</td>
		   					<td align="right" style="border-left: 0px;border-right: 0px;" valign="middle">
		   						<span><b>></b>&nbsp;&nbsp;</span>
		   					</td>
		   				</tr>
	   				</tbody>
	   			</table>
	   			
	   		</div>
   		</div>
    	<div class="form-group" style="padding-top: 10px;"> 
				<div class="col-xs-6 link">
					<p class="text-center remove-margin">
						<a href="javascript:void(0)" onclick="loginOut()">退出登录</a>
					</p>
				</div>
				<div class="col-xs-6 link">
					<p class="text-center remove-margin">
						<a href="javascript:void(0)" data-toggle="modal" data-target="#oblsModal">修改密码</a>
					</p>
				</div>
			</div>
    	
</div>
<div id="myAlert" class="alert alert-seccess"></div>
    <jsp:include page="mobile_footer.jsp"></jsp:include>
    <script type="text/javascript">
    	$(function(){
    		if('${userInfo}' == '' || '${userInfo}' == null){
    			window.location.href = '${basePath }user/tologin';
    		}
    	});
    	function loginOut(){
    		if(confirm("确定退出登录?")){
    			window.location.href = "${basePath }user/loginout";
    		}
    	}
    </script>
  </body>
</html>
