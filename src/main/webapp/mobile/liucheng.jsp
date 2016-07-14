<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快易收|流程</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="<%=basePath%>hplus/css/bootstrap.min.css" rel="stylesheet">
  </head>
  
  <body>
   	<div class="main-container">
    <div class="container">
    
   
    
    	<div class="row">
    		
    		<div class="col-md-12">
    			<img alt="" src="<%=basePath%>hplus/img/cs4.jpg" style="width: 100%">
    		</div>
    		
    	</div>
    	
    	<div class="row">
    		<div class="col-md-12">
    			<img alt="" src="<%=basePath%>hplus/img/cz3.png" style="width: 100%">
    		</div>
    	</div>
    	
    	
    	<div class="row" style="background-color: #fff">
    		<div class="col-md-12 text-center">
    		<span class="glyphicon glyphicon-chevron-down" style="color: #ffa800"></span><br>
    		<span class="glyphicon glyphicon-chevron-down" style="color: #ffa800"></span><br>
    			<a id="apdivfr" name="apdiv" type="button" id="casbutton" class="btn btn-success" style="width:50%;" onclick="checkUser()">免费发布信息</a><br><br><br><br><br>
    		</div>
    		</div>
    		
    	</div>
    	
    </div>
    
 
    
    </div>
    
   <div class="container-fluid" >
	<nav class="navbar navbar-default navbar-fixed-bottom" style="background-color: #0b6070">
	<ul class="nav text-center">
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;"><a
			href="http://www.eshou360.com" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-home"></i><br>主页</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a target="_blank" 
			href="http://form.mikecrm.com/yJPdFL" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-plus-sign"></i><br>加盟</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a
			href="ObligMsg?method=3000" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-share"></i><br>发布</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a
			href="om?method=410" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-user"></i><br>登录|注册</a></li>
	</ul>
	</nav>
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