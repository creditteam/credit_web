<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"><!-- Mobile Meta -->
	<jsp:include page="mobile_meta.jsp"></jsp:include>

<style type="text/css">
.navbar-default .navbar-nav>.open>a,.navbar-default .navbar-nav>.open>a:hover,.navbar-default .navbar-nav>.open>a:focus
	{
		color: #ffffff;
		background-color: transparent;
	}
	.test_ul{
	    -webkit-padding-start: 1px;
		list-style:none;
		white-space: nowrap;
		height:126px;
	}
	.test_ul li{
		display:block;
		text-align:center;
		display:inline-block;
	} 
	.thum22{
		display:block;
		margin-top: 1px;
	    margin-left: 1px;
	    background-color: #fff;
	    border: 1px solid #ddd;
	}
	</style>
	<script type="text/javascript">
		var i=5;
		function add() {       
			$('div').scrollLeft(i+=5);
		}
</script>
<title>快易收债权管理</title>
</head>

<body >
<div class="main-container">
	<div class="row">
		<div class="col-xs-6"><img style="height: 24px" id="logo" src="${basePath }hplus/img/logo.jpg"  alt="快易收"></div>
		<div class="col-xs-6"><p style="color: #5f5d5d">服务热线 ： 4008-338-997</p></div>
	</div>
	<div class="row">
		
		<div class="col-xs-12">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="${basePath }hplus/img/ad_24.jpg"
							alt="First slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="${basePath }hplus/img/ad_25.jpg"
							alt="Second slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="${basePath }hplus/img/ad_26.jpg"
							alt="Third slide">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="${basePath }hplus/img/ad_27.jpg"
							alt="fourth slide">
						<div class="carousel-caption"></div>
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="carousel-control left" href="#myCarousel"
					data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
				<a class="carousel-control right" href="#myCarousel" 
				    data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	
	</div>
</div>

<div class="container" >
	<div class="row" style="background-color: #fff">
		<div class="col-xs-4" style="height: 100px; ">
		<a href="${basePath }mobile/oblmsg.jsp">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; ; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj03.png">
				<p style="color: #666666" >债权信息 </p>
			</div>
		</a>
		</div>
		<div class="col-xs-4" style="height: 100px;">
		<a href="${basePath }mobile/xuans.jsp">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; ; border-radius:25px;">
				<img alt="" style="" src="${basePath }hplus/img/bj10.png">
				<p style="color: #666666" >线索悬赏</p>
			</div>
		</a></div>
		<div class="col-xs-4" style="height: 100px; ">
		<a href="${basePath }mobile/zjgw.jsp">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj04.png">
				<p style="color: #666666" >专家顾问库</p>
			</div>
		</a></div>
	</div>
	<div class="row">
		<div class="col-xs-4" style="height: 100px; ">
			<a href="${basePath }mobile/chuzhi.jsp">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj05.png">
				<p style="color: #666666" >服务产品</p>
			</div>
		</a>
		</div>
		
		<div class="col-xs-4" style="height: 100px; ">
			<a href="${basePath }mobile/dongtai.jsp">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj08.png">
				<p style="color: #666666" >业务咨讯</p>
			</div>
		</a>
		</div>
		<div class="col-xs-4" style="height: 100px; ">
		<a href="${basePath }mobile/swhz.jsp">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj02.png">
				<p style="color: #666666" >商务合作</p>
			</div>
		</a></div>
		
	</div>
	<div class="row">
		
		<%-- <div class="col-xs-4" style="height: 100px; ">
		<a href="${basePath }mobile/swhz.jsp">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj02.png">
				<p style="color: #666666" >商务合作</p>
			</div>
		</a></div> --%>
		<div class="col-xs-4" style="height: 100px; display: none">
		<a href="om?method=403">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj06.png">
				<p style="color: #666666" >关于我们</p>
			</div>
		</a></div>
		<%-- <div class="col-xs-4" style="height: 100px; ">
		<a href="om?method=420">
			<div class="text-center" style="margin: 8 8 8 8; width: 90%; height: 84%; border-radius:25px;">
				<img alt="" src="${basePath }hplus/img/bj09.png">
				<p style="color: #666666" >资源下载</p>
			</div>
		</a></div> --%>
	</div>
	
</div>

	<div class="row"><h4 class="text-center">专家顾问库</h4></div>
<div class="main-container" id="yunxing" style="background-color: #f2f2f2; border-top:thick double #ff0000;height:196px;overflow-x:auto">
	<ul class="test_ul">
        <li >
          <div class="thum22">
            <img src="${basePath }hplus/img/expert/crt.jpg" class="img-rounded" width="100px" height="120px"/>
            <div >
              <h5>哦哦哦</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
        <li >
          <div class="thum22">
            <img src="${basePath }hplus/img/expert/gch.jpg" class="img-rounded" width="100px" height="120px"/>
            <div >
              <h5>哟哟哟</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
        <li >
          <div class="thum22" >
            <img src="${basePath }hplus/img/expert/xxy.jpg" class="img-rounded" width="100px" height="120px"/>
            <div >
              <h5>嘻嘻嘻</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
        <li >
          <div class="thum22" >
            <img src="${basePath }hplus/img/expert/zhb.jpg" class="img-rounded" width="100px" height="120px"/>
            <div >
              <h5>哈哈哈</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
        <li >
          <div class="thum22">
            <img src="${basePath }hplus/img/expert/crt.jpg" width="100px" height="120px"/>
            <div >
              <h5>哦哦哦</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
        <li >
          <div class="thum22">
            <img src="${basePath }hplus/img/expert/gch.jpg" class="img-rounded" width="100px" height="120px"/>
            <div >
              <h5>哟哟哟</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
        <li >
          <div class="thum22" >
            <img src="${basePath }hplus/img/expert/xxy.jpg" class="img-rounded" width="100px" height="120px"/>
            <div >
              <h5>嘻嘻嘻</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
        <li >
          <div class="thum22" >
            <img src="${basePath }hplus/img/expert/zhb.jpg" class="img-rounded" width="100px" height="120px"/>
            <div >
              <h5>哈哈哈</h5>
              <p>资深处置专家</p>
            </div>
          </div>
        </li>
      </ul>
	
</div>
 

<div class="subfooter" style="background-color: #0b6070; margin-top: 50px">
	<div class="main-container">
		<div class="row">
			<div class="col-md-12" style="color: #fff">
				<p class="text-left">
					Copyright © 2016 易收（深圳）网络科技有限公司  版权所有 
					</p>
				<p>备案号：<a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">粤ICP备16039401号-1</a></p>
			</div>
		</div>
	</div>
</div>

<jsp:include page="mobile_footer.jsp"></jsp:include>

</body>
</html>
