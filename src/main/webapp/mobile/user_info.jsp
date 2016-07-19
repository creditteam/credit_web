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
    <nav class="navbar navbar-default" role="navigation">
		   <div class="navbar-header">
		      <a class="navbar-brand" href="javascript:toUserHome()">&lt;返回</a>
		   </div>
		</nav>
   	<div class="col-sm-12">
	    <table width="99%" style="line-height: 40px">
	         <tr>
	         	<td colspan="2" align="center"><h4>债权人信息</h4></td>
	         </tr>
	         <tr>
	         	<td width="40%" align="right"><label class="control-label" >姓名：&nbsp;</label></td>
	         	<td width="60%" align="left">&nbsp;${user.nickname}</td>
	         </tr>
	         <tr>
	         	<td align="right"><label class="control-label" >会员类型：&nbsp;</label></td>
	         	<td align="left"><c:if test="${user.userType eq 0}">债权方</c:if>
                    <c:if test="${user.userType eq 1}">处置方</c:if></td>
	         </tr>
	         <tr>
	         	<td align="right"><label class="control-label" >E-mail：&nbsp;</label></td>
	         	<td align="left">&nbsp;${user.userEmail}</td>
	         </tr>
	         <tr>
	         	<td align="right"><label class="control-label" >手机：&nbsp;</label></td>
	         	<td align="left">&nbsp;${user.userPhone}</td>
	         </tr>
	         <tr>
	         	<td align="right"><label class="control-label" >说明：&nbsp;</label></td>
	         	<td align="left">&nbsp;${user.description}</td>
	         </tr>
	         <tr>
	         	<td></td>
	         	<td></td>
	         </tr>
	         <tr>
	         	<td colspan="2" height="20px;"></td>
	         </tr>
	    </table>
    	
</div>
    <jsp:include page="mobile_footer.jsp"></jsp:include>
    <style type="text/css">
	.navbar-nav>li>a {
		padding-top: 10px;
		padding-bottom: 10px;
	}
	.navbar-brand {
		height: 38px;
		padding-top: 9px;
	}
	.navbar {
		min-height: 38px;
	}
	.navbar-toggle {
		margin-top: 4px;
		margin-bottom: 4px;
	}
</style>
    <script type="text/javascript">
    	function toUserHome(){
    		window.location.href = "${basePath}user/tologin";
    	}
    </script>
    
  </body>
</html>
