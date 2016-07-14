<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<style type="text/css">
body {background:url(<%=basePath%>hplus/img/bg.gif) top center no-repeat; background-size:cover;}
</style>
  </head>
  
  <body>
  <div class="main-container">
  
    <div class="container" style="background-color: #fff">
    <div class="row">
		<div class="col-xs-6"><img style="height: 25px" id="logo" src="${basePath}hplus/img/logo.jpg"  alt="快易收"></div>
		<div class="col-xs-6"><p style="color: #5f5d5d">服务热线:4008-338-997</p></div>
	</div>
    	<div class="row">
    		
    		<div class="col-md-14" style="height:80px;line-height:80px;overflow:hidden;background-image: url(${basePath}hplus/img/ad_27.jpg);">
    			<table width="100%" height="100%">
    				<tr>
    					<td align="left">
    						<img alt="" src="${basePath}hplus/img/yh_01.png" class="img-circle" style="width: 70px;height:70px;"/>欢迎：管理员
    					</td>
    					<td align="right">
    						<span><b>></b>&nbsp;&nbsp;</span>
    					</td>
    				</tr>
    			</table>
    		</div>
    	</div>
    	<div class="row">
	    	<div class="col-md-14">
	   			<table class="table table-bordered" width="100%" style="margin-top: 10px;border-left: 0px;border-right: 0px;">
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
    	
    	
    </div>
</div>
    
<script type="text/javascript">
function checkUser() {
	if (${user == null} || ${user.userid < 0}) {
		alert("请先登录系统，再点击招标");
		window.location.href="om?method=410";
		return false;
	} else {window.location.href="ObligMsg?method=3000";}
	
	return true;
}
</script>
  </body>
</html>
