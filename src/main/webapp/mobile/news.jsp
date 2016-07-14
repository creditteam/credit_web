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
    
    <title>快易收债权管理|业务文章</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
		<div class="col-xs-12" style="background-color: #eeeeee;">
			<div>
				<h1 class="text-center">${newsShow.title}</h1>
				<br>
				<p class="text-center">发布时间： ${newsShow.date}</p><br>
			</div>
			<div>
				<p>&nbsp&nbsp&nbsp&nbsp${newsShow.common}</p>
			</div>
		</div>
			
		</div>
		
		<div class="row">
			<ul id="ywTab" class="nav nav-tabs">
					<li class="active"><a href="#ywhome" data-toggle="tab"
						style="color: red"> <span class="glyphicon glyphicon-list-alt"></span><b
							class="text-left">业务文章</b>
					</a></li>
				</ul>
				<div id="ywTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="ywhome">
						<c:forEach items="${listAll_news}" var="news">
							<div id="new${news.id}" style="border-bottom:thin solid #ffeeee;" class="text-left">
								<a style="color: #666666; padding-left: 20" href="Industry?method=9528&newsid=${news.id}">
									<br>${news.title }
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
				<ul id="dtTab" class="nav nav-tabs">
					<li class="active"><a href="#dthome" data-toggle="tab"
						style="color: red"> <span class="glyphicon glyphicon-list-alt"></span>
						<b class="text-left">行业动态</b>
					</a></li>
				</ul>
				<div id="dtTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="dthome">

						<c:forEach items="${listAll_industry}" var="industry">
							<div id="${industry.id}"
								style="border-bottom:thin solid #ffeeee;">
								<div class="text-left">
									<a href="Industry?method=9527&nmid=${industry.id}"
										target="_blank" class="text-left" style=" padding-left: 20"><br>${industry.title }</a>
								</div>
							</div>
						</c:forEach>

					</div>
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

