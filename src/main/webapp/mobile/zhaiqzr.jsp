<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快易收债权管理|债权转让</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<Link Rel="icon" href="img/kuaiyishou.ico" type=”image/x-icon”>
	<link href="css/bootstrap.css" rel="stylesheet">

  </head>
  
  <body>
<div class="main-container">
    <div class="row">
	<div>
            <img class="carousel-inner img-responsive img-rounded" alt="" src="images/24.jpg">
       </div>
	</div>
    <div class="row" style="background-color: #f8f8f8;">
    
        <div style=" margin-top: -0px;">
            <h3 class="text-left" style="background-color: #0b6072; width: 100%; color: #fff;margin-top: -0px"><img alt="" src="img/icon-zr.png"> <span>债权转让</span></h3>
        
        <div class="text-left" style="background-color: #008f0f; color: #fff; margin-top: -10px">
            <p style="font-weight: bold; font-size: 26; margin-top: -0px"><br>快速处置！<br>只为保护债权人利益！</p><br><br>
            <p style="font-size: 20">&nbsp&nbsp&nbsp&nbsp  债权转让是指债权人将其对某主体的全部或部分债权及其附属利益以一定的对价转让给第三人，以迅速地收回款项。</p>
            <p class="" style="font-size: 20">&nbsp&nbsp&nbsp&nbsp  快易收债权管理平台汇集了来自全国的政法系统辞职人员和知名律所的资深律师。平台将结合债权人所发布的处理事项，通过大数据处理，对处置团队的资质、经验、专长、人脉、社会资源、地理位置等多个维度考量、筛选，进行匹配推送，促成终极处置成功。</p>
        <br><br>
        </div>
        
          <div class="clear"></div>
          
        </div>
  
    </div>
    <div class="row" style="background-color: #f8f8f8;">
        <div>
            <div class="text-left" style="border-bottom:thin solid #ff0000;"><h3><span>债权转让的优势</span></h3></div>
        </div>
      
    </div>
    <div class="row" style="background-color: #f8f8f8;">
    
        <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #eeeeee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">手续方便、简单。</span></div>
        </div>
        
        <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #0effee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">可迅速收回款项，避免债务人清偿不能的风险。</span></div>
        </div>
        
        <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #eeeeee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">无缝对接、自由交易。</span></div>
        </div>
        
        <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #0effee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">信息公开透明，全程法律保障。</span></div>
        	</div>
     
      </div>
      
        
     <div class="row" style="background-color: #f8f8f8;">
    	
        <div>
        <br><br>
        <a id="apdivfr" name="apdiv" type="button" id="casbutton" class="btn btn-primary" style="width:90%; margin-left:5%; font-size:50px" onclick="checkUser()">免费发布信息</a>
        </div>
      
    </div>   
    </div>

<div class="subfooter" style="background-color: #0b6070; margin-top: 50px">
	<div class="main-container">
		<div class="row">
			<div class="col-md-12" style="color: #fff">
				<p class="text-center">
					Copyright © 2016 by <a target="_blank"
						href="http://www.eshou360.com">www.eshou360.com</a>.
				</p>
			</div>
		</div>
	</div>
</div>
<div style="height: 50px"></div>			
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
