<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 成功案例 -->
<div class="row">
	<div class="col-md-12">
		<div id="myCarousel2" class="carousel slide" data-ride="carousel">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel2" data-slide-to="0"></li>
				<li data-target="#myCarousel2" data-slide-to="1"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<c:forEach var="item" items="${sampleList}" varStatus="status">
						<div class="item <c:if test="${status.first}">active</c:if>">
							<div class="row">
								<div class="col-sm-12" style="font-size: 18px">
									${item.samName}：${item.description}
								</div>
							</div>
							<div class="carousel-caption"></div>
						</div>
				</c:forEach>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class=" left" href="#myCarousel2" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
			<a class=" right" href="#myCarousel2" data-slide="next" style="text-align: right;float: right;"><span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
</div>