<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>快易收-欢迎您登陆快易收债权管理系统</title>
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<jsp:include page="mobile_meta.jsp"></jsp:include>
 <link href="${basePath }hplus/css/kkpager_orange.css" rel="stylesheet">
</head>

<body class="gray-bg top-navigation">
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="mobile_top_logo.jsp"></jsp:include>
			<ul class="list-group">
				<li class="list-group-item" style="font-size: 16px" onclick="javascript:history.go(-1)">&lt;返回</li>
			</ul>
			<!-- 用户登录begin -->
			<div class="wrapper wrapper-content animated fadeInRight">
			    <!-- 法律文书 -->
				<div class="row">
					<div class="col-sm-12">
						<div class="ibox-title" style="margin-left: 15px;">
							<h4>法律文书</h4>
						</div>
						<table  id="finishingTask" style="width:99%" class="table table-borderd">
							<tbody id="creditDisposal">
								<c:forEach items="${fileList}" var="htfile">
									<tr>
									    <td><span class="label label-warning">法</span></td>
										<td>
											<a target="_blank" style="color: #666666" href="${basePath }${htfile.downloadUrl}">${htfile.fileTitle}</a>
										</td>
										<td align="right"><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}"  target="_blank">下载</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			
			   <!-- 合同模版 -->
			    <div class="row">
			    	<div class="col-sm-12">
						<div class="ibox-title" style="margin-left: 15px;">
							<h4>合同模版</h4>
						</div>
						<table style="width:99%" class="table table-borderd">
							<tbody>
								<c:forEach items="${htfileList}" var="htfile">
									<tr>
									    <td><span class="label label-warning">合</span></td>
										<td>
											<a target="_blank" style="color: #666666" href="${basePath }${htfile.downloadUrl}">${htfile.fileTitle}</a>
										</td>
										<td align="right"><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}" target="_blank">下载</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>	
			    </div>
			
			   <!-- 实用文件 -->
			   	<div class="row">
			    	<div class="col-sm-12">
						<div class="ibox-title" style="margin-left: 15px">
							<h4>实用文件</h4>
						</div>
						<table style="width:99%" class="table table-borderd">
							<tbody>
								<c:forEach items="${wsfileList}" var="htfile">
									<tr>
									    <td><span class="label label-warning">文</span></td>
										<td>
											<a target="_blank" style="color: #666666" href="${basePath }${htfile.downloadUrl}">${htfile.fileTitle}</a>
										</td>
										<td align="right"><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}" target="_blank">下载</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
			    	</div>
			    </div>
			    <!-- end -->
			</div>
		   </div>
		<!-- 用户登录end -->
	</div>
	<!-- 底部文件 -->
	<jsp:include page="mobile_footer.jsp"></jsp:include>
</body>

</html>