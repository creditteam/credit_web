<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 用户心声 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";//
pageContext.setAttribute("basePath", basePath);
%>
<div class="row">
	<div class="col-md-12">
		<div id="myCarousel3" class="carousel slide" data-ride="carousel">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel3" data-slide-to="0" ></li>
				<li data-target="#myCarousel3" data-slide-to="1"></li>
				<%--
				<li data-target="#myCarousel2" data-slide-to="2"></li>
				<li data-target="#myCarousel2" data-slide-to="3"></li>
				 --%>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<c:forEach var="item" items="${sampleList1}" varStatus="status">
						<div class="item <c:if test="${status.first}">active</c:if>">
							<div class="row">
								<div class="col-sm-2">
									<img src="${basePath}${item.samImg}" width="100%" alt="First slide"  width="112" height="163">
								</div>
								<div class="col-sm-1"  style="font-size: 16px">
									${item.samName}<br>
									${item.trade}<br>
									金额：${item.amount}<br>
								</div>
								<div class="col-sm-1" >
									<img alt="" src="hplus/img/user_xs_line.png">
								</div>
								<div class="col-sm-8" style="font-size: 16px">
									${item.description}
								</div>
							</div>
							<div class="carousel-caption"></div>
						</div>
				</c:forEach>
				
				<%--
				<div class="item">
					<img src="hplus/img/ad_33.png" width="100%" alt="Third slide">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="hplus/img/ad_34.png" width="100%" alt="fourth slide">
					<div class="carousel-caption"></div>
				</div>
				 --%>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="carousel-control left" href="#myCarousel3" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
			<a class="carousel-control right" href="#myCarousel3" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
</div>