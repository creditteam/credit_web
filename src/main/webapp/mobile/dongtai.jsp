<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快易收债权管理|业务资讯</title>
    <meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
 	<jsp:include page="mobile_meta.jsp"></jsp:include>
	
  </head>
  
  <body>
	
	<div class="main-container" style="height:100%">
	<div class="row">
			<div class="col-xs-6"><img style="height: 25px" id="logo" src="<%=basePath%>hplus/img/logo.jpg"  alt="快易收"></div>
			<div class="col-xs-6"><p style="color: #5f5d5d">服务热线 ： 4008-338-997</p></div>
		</div>
    <div class="row">
		<div >
           <img class="carousel-inner img-responsive img-rounded" alt="" src="<%=basePath%>hplus/img/ad_25.jpg">
        </div>
	</div>
	
	<div class="row">
			
		</div>
		<div class="row" >
			<ul id="dtTab" class="nav nav-tabs">
					<li class="active"><a href="#dthome" data-toggle="tab"
						style="color: blue"> <span class="glyphicon glyphicon-film"></span><b
							class="text-left">行业动态</b>
					</a></li>
					<li><a href="#ywhome" data-toggle="tab"
						style="color: blue"> <span class="glyphicon glyphicon-list-alt"></span><b
							class="text-left">业务文章</b>
					</a></li>
					<li><a href="#zyhome" data-toggle="tab"
						style="color: blue"> <span class="glyphicon glyphicon-circle-arrow-down"></span><b
							class="text-left">资源下载</b>
					</a></li>
				</ul>
				<div id="dtTabContent" class="tab-content" >
					<div class="tab-pane fade in active" id="dthome">

						<!--<c:forEach items="${listAll_industry}" var="industry">
							<div id="${industry.id}"
								style="border-bottom:thin solid #ffeeee;">
								<div class="text-left">
									<a href="Industry?method=9527&nmid=${industry.id}"
									 style=" padding-left: 20"><br>${industry.title }</a>
								</div>

							</div>
						</c:forEach>-->
						<div id="1"
							style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left:20">
								<a href="Industry?method=9527&nmid=1"><br>>从十三五规划看中国金融服务的未来</a>
							</div>
						<div id="1"
							style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left:20">
								<a href="Industry?method=9527&nmid=1"><br>>P2P再次躺枪，被上海高端写字楼一刀切拉黑</a>
							</div>
						</div>
						<div id="1"
							style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left: 20">
								<a href="Industry?method=9527&nmid=1" ><br>>未来三年，这三类律师将赚的盆满钵满！</a>
							</div>
						</div>
						<div id="1"
							style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left: 20">
								<a href="Industry?method=9527&nmid=1"><br>>谁是互联网金融界的阿里巴巴？</a>
							</div>
						</div>
						<div id="1"
							style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left: 20">
								<a href="Industry?method=9527&nmid=1"><br>>广州投资客，以后投资前有“黑名单”可以查了！</a>
							</div>
						</div>
					</div>
				</div>
					<div class="tab-pane fade" id="ywhome">
							<div id="new1" style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left: 20">
								<a target="_blank" style="color: #666666; padding-left: 20" href="Industry?method=9528&newsid=2"><br>如何延长债务纠纷的诉讼“保质期”？</a>
								</div>
							</div>
							<div id="new1" style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left: 20">
								<a target="_blank" style="color: #666666; padding-left: 20" href="Industry?method=9528&newsid=2"><br>公司垮了，债主有何妙招？</a>
								</div>
							</div>
					</div>
					<div class="tab-pane fade" id="zyhome">
							<div id="new1" style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left: 20">
								<a target="_blank" style="color: #666666; padding-left: 20" href="Industry?method=9528&newsid=2"><br>如何延长债务纠纷的诉讼“保质期”？</a>
								</div>
							</div>
							<div id="new1" style="border-bottom:thin solid #ffeeee;">
							<div class="text-left" style="padding-left: 20">
								<a target="_blank" style="color: #666666; padding-left: 20" href="Industry?method=9528&newsid=2"><br>公司垮了，债主有何妙招？</a>
								</div>
							</div>
					</div>
				<%--<ul id="ywTab" class="nav nav-tabs">
					<li class="active"><a href="#ywhome" data-toggle="tab"
						style="color: red"> <span class="glyphicon glyphicon-list-alt"></span><b
							class="text-left">业务文章</b>
					</a></li>

				</ul>
				<div id="ywTabContent" class="tab-content" >
					<div class="tab-pane fade in active" id="ywhome">
						 <c:forEach items="${listAll_news}" var="news">
							<div id="new${news.id}" style="border-bottom:thin solid #ffeeee;">
								<a target="_blank" style="color: #666666; padding-left: 20" href="Industry?method=9528&newsid=${news.id}"><br>${news.title }</a>
							</div>
						</c:forEach> 
					</div>
				</div>--%>
		</div>
	</div>
	</div>
<jsp:include page="mobile_footer.jsp"></jsp:include>

  </body>
</html>
