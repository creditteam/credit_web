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
    
    <title>快易收债权管理|合同文书下载</title>
    
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
    <link rel="stylesheet" href="css/home.css">
	<script src="js/jquery.min.js"></script>
 	<script src="js/bootstrap.min.js"></script>
 	<script src="js/index.js"></script>
  </head>
  
  <body>
    
	<div class="main-container">
    <div class="row">
		<div >
           <img class="carousel-inner img-responsive img-rounded" alt="" src="images/25.jpg">
        </div>
	</div>
	
	<div class="row">
		
			<div class="col-sd-12">
				<ul id="dtTab" class="nav nav-tabs" style="padding-top: 50px">
					<li class="active"><a href="#dthome" data-toggle="tab"
						style="color: red"> <span class="glyphicon glyphicon-list-alt"></span><b
							class="text-left">法律文书</b>
					</a></li>
				</ul>
				<div id="dtTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="dthome">
					<table style="width: 96%">
						<c:forEach items="${fvfilelist}" var="htfile">
							<tr>
								<td style="text-align:left"><span class="badge">法</span></td><td style="text-align:left; width: 35%">
								<div style="border-bottom:thin solid #ffeeee;">
								
									<a target="_blank" style="color: #666666" href="${htfile.url1}">
										<h4>${htfile.fname1}</h4>
									</a>
								</div>
								</td>
								<td style="text-align:left;"><button class="btn btn-primary" onclick="" style="display: none">预览</button><a class="btn btn-success" href="${htfile.url1}">下载</a></td>
								
								<td style="width: 10%"></td>
								
								<td style="text-align:left"><span class="badge">法</span></td><td style="text-align:right; width: 35%">
								<div style="border-bottom:thin solid #ffeeee;">
								
									<a target="_blank" style="color: #666666" href="${htfile.url2}">
										<h4>${htfile.fname2}</h4>
									</a>
								</div>
								</td>
								
								<td style="text-align:right"><button class="btn btn-primary" style="display: none">预览</button><a class="btn btn-success" href="${htfile.url2}">下载</a></td>
							</tr>
						</c:forEach>
					</table>

					</div>
				</div>

				<ul id="ywTab" class="nav nav-tabs" style="padding-top: 50px">
					<li class="active"><a href="#ywhome" data-toggle="tab"
						style="color: red"> <span class="glyphicon glyphicon-list-alt"></span><b
							class="text-left">合同模板</b>
					</a></li>


				</ul>
				<div id="ywTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="ywhome">
						<table style="width: 96%">
						<c:forEach items="${htfilelist}" var="htfile">
							<tr>
								<td style="text-align:left"><span class="badge">合</span></td><td style="text-align:left; width: 35%">
								<div style="border-bottom:thin solid #ffeeee;">
								
									<a target="_blank" style="color: #666666" href="${htfile.url1}">
										<h4>${htfile.fname1}</h4>
									</a>
								</div>
								</td>
								<td style="text-align:left;"><button class="btn btn-primary" onclick="" style="display: none">预览</button><a class="btn btn-success" href="${htfile.url1}">下载</a></td>
								
								<td style="width: 10%"></td>
								
								<td style="text-align:left"><span class="badge">合</span></td><td style="text-align:right; width: 35%">
								<div style="border-bottom:thin solid #ffeeee;">
								
									<a target="_blank" style="color: #666666" href="${htfile.url2}">
										<h4>${htfile.fname2}</h4>
									</a>
								</div>
								</td>
								
								<td style="text-align:right"><button class="btn btn-primary" style="display: none">预览</button><a class="btn btn-success" href="${htfile.url2}">下载</a></td>
							</tr>
						</c:forEach>
					</table>
					</div>
				</div>
				
				<ul id="syTab" class="nav nav-tabs" style="padding-top: 50px">
					<li class="active"><a href="#syhome" data-toggle="tab"
						style="color: red"> <span class="glyphicon glyphicon-list-alt"></span><b
							class="text-left">实用文书</b>
					</a></li>


				</ul>
				<div id="syTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="syhome">
						<table style="width: 96%">
						<c:forEach items="${syfilelist}" var="htfile">
							<tr>
								<td style="text-align:left"><span class="badge">文</span></td><td style="text-align:left; width: 35%">
								<div style="border-bottom:thin solid #ffeeee;">
								
									<a target="_blank" style="color: #666666" href="${htfile.url1}">
										<h4>${htfile.fname1}</h4>
									</a>
								</div>
								</td>
								<td style="text-align:left;"><button class="btn btn-primary" onclick="" style="display: none">预览</button><a class="btn btn-success" href="${htfile.url1}">下载</a></td>
								
								<td style="width: 10%"></td>
								
								<td style="text-align:left"><span class="badge">文</span></td><td style="text-align:right; width: 35%">
								<div style="border-bottom:thin solid #ffeeee;">
								
									<a target="_blank" style="color: #666666" href="${htfile.url2}">
										<h4>${htfile.fname2}</h4>
									</a>
								</div>
								</td>
								
								<td style="text-align:right"><button class="btn btn-primary" style="display: none">预览</button><a class="btn btn-success" href="${htfile.url2}">下载</a></td>
							</tr>
						</c:forEach>
					</table>
					</div>
				</div>
				
			</div>
		</div>
	
	</div>
	

<div style="height: 100px"></div>			
<div class="container-fluid" >
	<nav class="navbar navbar-default navbar-fixed-bottom" style="background-color: #0b6070">
	<ul class="nav text-center">
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;"><a
			href="http://www.eshou360.com" style="color: #fff; font-size: 36"><i style="color: #fff" class="glyphicon glyphicon-home"></i><br>主页</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a target="_blank" 
			href="http://form.mikecrm.com/yJPdFL" style="color: #fff; font-size: 36"><i style="color: #fff" class="glyphicon glyphicon-plus-sign"></i><br>加盟</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a
			href="ObligMsg?method=3000" style="color: #fff; font-size: 36"><i style="color: #fff" class="glyphicon glyphicon-share"></i><br>发布</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a
			href="om?method=410" style="color: #fff; font-size: 36"><i style="color: #fff" class="glyphicon glyphicon-user"></i><br>登录|注册</a></li>
	</ul>
	</nav>
</div>
	<script type="text/javascript">
		function dowloadFile(type,fileName) {
			//alert(fileName);
			$.ajax({
				 type: "POST", //用POST方式传输
				 dataType: "text", //数据格式:字符串
				 url: "FileDowload", //目标地址
				 data: 'method=6541'+'&fileName='+fileName+'&type='+type,
				 error: function (XMLHttpRequest, textStatus, errorThrown) {
					 alert("下载失败，请稍候再试");
				 },
				 success: function (msg){
					 //alert(msg);
				 }
			 });
		}
		
		function checkUser() {
			if (${user.userid < 0}) {
				alert("请先登录系统，再发布债权信息");
				window.location.href="#";
				return false;
			}
			window.location.href="ObligMsg?method=3000";
			return true;
		}
	</script>
  </body>
</html>
