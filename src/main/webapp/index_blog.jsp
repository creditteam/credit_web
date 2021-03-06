<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";//
pageContext.setAttribute("basePath", basePath);
%>
<div class="row">
	<div class="col-sm-12">
		<div class="tabs-container">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tab-blog1"
					aria-expanded="true">媒体报道</a></li>
				<li class=""><a data-toggle="tab" href="#tab-blog2"
					aria-expanded="false">业务文章</a></li>
				<li class=""><a href="${basePath}filemanager/list">资源下载</a></li>
			</ul>
			<div class="tab-content">
				<div id="tab-blog1" class="tab-pane active">
					<div class="panel-body">
						<div class="row">
							<c:forEach items="${blogList1}" var="item">
								<div class="search-result">
									<h3>
										<a href="${item.blogSource}" style="color:#676A6C">&nbsp;&nbsp;${item.blogTitle}</a>
									</h3>
									<p>&nbsp;&nbsp;&nbsp;
										<a href="${item.blogSource}"><img alt="" src="${item.blogImage}" width="80px" height="60px"></a>
										<span style="margin-left: 15px">${item.blogIntroduction}</span></p>
								</div>
								<div class="hr-line-dashed"></div>
							</c:forEach>
							<a class="pull-right" href="${basePath }blog/list?from=0&blogType=1" target="_blank">更多>></a>
						</div>
					</div>
				</div>
				<!-- div1 end -->
				<div id="tab-blog2" class="tab-pane">
					<div class="panel-body">
						<div class="row">
							<c:forEach items="${blogList2}" var="item">
								<div class="search-result">
									<h3>
										<a href="${basePath}blog/details?id=${item.id}" style="color:#676A6C">&nbsp;&nbsp;${item.blogTitle}</a>
									</h3>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;${item.blogIntroduction}</p>
								</div>
								<div class="hr-line-dashed"></div>
							</c:forEach>
							<a class="pull-right" href="${basePath }blog/list?from=0&blogType=2" target="_blank">更多>></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br/>