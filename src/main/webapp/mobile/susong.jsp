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
    
    <title>快易收债权管理|诉讼追收</title>
    <Link Rel="icon" href="img/kuaiyishou.ico" type=”image/x-icon”>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/bootstrap.css" rel="stylesheet">
	

  </head>
  
  <body>
    <div class="main-container">
    <div class="row">
	<div>
            <img alt="" src="images/27.jpg" style="width: 100%;">
       </div>
	</div>
    <div class="row" style="background-color: #f8f8f8;">
        <div style=" margin-top: -0px;">
            <h3 class="text-left" style="background-color: #0b6072; width: 100%; color: #fff;margin-top: -0px"><img alt="" src="img/icon-sf.png"> <span>诉讼追收</span></h3>
        
        <div class="text-left" style="background-color: #008f0f; color: #fff; margin-top: -10px">
            <p style="font-weight: bold; font-size: 26; margin-top: -0px"><br>让专业的人做专业的事！<br>只为保护债权人利益！</p><br><br>
            <p class="" style="font-size: 20">&nbsp&nbsp&nbsp&nbsp诉讼追收是通过到管辖法院提起诉讼的方式请求国家司法机关对债权人的债权进行追偿。</p>
            <p class="" style="font-size: 20">&nbsp&nbsp&nbsp&nbsp快易收债权管理平台汇集了来自全国的政法系统辞职人员和知名律所的资深律师。平台将结合债权人所发布的处理事项，通过大数据处理，对处置团队的资质、经验、专长、人脉、社会资源、地理位置等多个维度考量、筛选，进行匹配推送，促成终极处置成功。</p>
        <br><br>
        </div>
        
          <div class="clear"></div>
          
        </div>
      
    </div>
    <div class="row" style="background-color: #f8f8f8;">
    
        <div>
            <div class="text-left" style="border-bottom:thin solid #ff0000;"><h3><span>诉讼追收的优势</span></h3></div>
        </div>
      
    </div>
    <div class="row " style="background-color: #f8f8f8; margin-top: 50px">
    
        <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #eeeeee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">法院会以裁判文书的方式<br/>对债权人的合法债权进行<br/>全面的司法确认。</span></div>
        </div>
        
        <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #0effee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">如法院执行手段有力，<br/>可能会实现全额受偿。</span></div>
        </div>
        
      </div>
      
      <div class="row" style="background-color: #f8f8f8; ">
       <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #eeeeee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">可在救济过程中对债务人<br/>的财产进行保全。</span></div>
        </div>
        
        <div class="col-xs-6" style=" margin-top: -0px;">
        	<div class="text-center" style="border-radius:50%;width: 200px;height: 200px;background-color: #0effee;margin-left: 20%"><br /><br /><br />
        	<span style="width: 150px">经司法确认的债权具有<br/>排他性，权威性高。</span></div>
        	</div>
      </div>
        
     <div class="row" style="background-color: #f8f8f8;">
    	
        <div>
        <br><br>
        <a id="apdivfr" name="apdiv" type="button" id="casbutton" class="btn btn-primary" style="width:90%; font-size:50px; margin-left: 5%; height: 100px" onclick="checkUser()">免费发布信息</a>
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
