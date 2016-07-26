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
	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
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
							class="text-left">媒体报道</b>
					</a></li>
					<li><a href="#ywhome" data-toggle="tab"
						style="color: blue"> <span class="glyphicon glyphicon-list-alt"></span><b
							class="text-left">业务文章</b>
					</a></li>
					<li><a href="${basePath}filemanager/list" 
						style="color: blue"> <span class="glyphicon glyphicon-circle-arrow-down"></span><b
							class="text-left">资源下载</b>
					</a></li>
				</ul>
				<div id="dtTabContent" class="tab-content" >
					<div class="tab-pane fade in active" id="dthome">

						<c:forEach items="${blogList1}" var="item">
							<div id="blog${item.id}" style="border-bottom:thin solid #ffeeee;">
								<div class="text-left" style="margin-left:20">
									<a href="${basePath}blog/details?id=${item.id}" style=" padding-left: 20"><br>${item.blogTitle }</a>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="tab-pane fade" id="ywhome">
						<c:forEach items="${blogList2}" var="item">
							<div id="blog${item.id}" style="border-bottom:thin solid #ffeeee;">
								<div class="text-left" style="margin-left:20">
									<a href="${basePath}blog/details?id=${item.id}" style=" padding-left: 20"><br>${item.blogTitle }</a>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="tab-pane fade" id="zyhome">
					</div>
		</div>
	</div>
	</div>
<jsp:include page="mobile_footer.jsp"></jsp:include>

  </body>
</html>
