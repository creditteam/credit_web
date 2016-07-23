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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>快易收-欢迎您登陆快易收债权管理系统</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<jsp:include page="/common/_meta.jsp"></jsp:include>
 <link href="${basePath }hplus/css/kkpager_orange.css" rel="stylesheet">
</head>

<body class="gray-bg top-navigation">
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="/common/_menu.jsp"></jsp:include>
			<!-- 用户登录begin -->
			<div class="wrapper wrapper-content animated fadeInRight">
			    <!-- 法律文书 -->
				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>法律文书</h5>
							</div>
							<div class="ibox-content">
							<div class="row">
							<div class="col-sm-6">
								<table  id="finishingTask" >
									<tbody id="creditDisposal">
										<c:forEach items="${fileList}" var="htfile" begin="0" step="2">
											<tr>
											    <td><span class="label label-warning">法</span></td>
												<td>
													<a target="_blank" style="color: #666666" href="${htfile.downloadUrl}">${htfile.fileTitle}</a>
												</td>
												<td><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}">下载</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</div>
								<div class="col-sm-6">
								<table>
									<tbody >
										<c:forEach items="${fileList}" var="htfile" begin="1" step="2">
											<tr>
											    <td><span class="label label-warning">法</span></td>
												<td>
													<a target="_blank" style="color: #666666" href="${htfile.downloadUrl}">${htfile.fileTitle}</a>
												</td>
												<td><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}">下载</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			
			   <!-- 合同模版 -->
			    <div class="row">
			    	<div class="col-sm-12">
			    			<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>合同模版</h5>
							</div>
							<div class="ibox-content">
							<div class="row">
							<div class="col-sm-6">
								<table  >
									<tbody>
										<c:forEach items="${htfileList}" var="htfile" begin="0" step="2">
											<tr>
											    <td><span class="label label-warning">合</span></td>
												<td>
													<a target="_blank" style="color: #666666" href="${htfile.downloadUrl}">${htfile.fileTitle}</a>
												</td>
												<td><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}">下载</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>	
								<div class="col-sm-6">
								<table  >
									<tbody>
										<c:forEach items="${htfileList}" var="htfile" begin="1" step="2">
											<tr>
											    <td><span class="label label-warning">合</span></td>
												<td>
													<a target="_blank" style="color: #666666" href="${htfile.downloadUrl}">${htfile.fileTitle}</a>
												</td>
												<td><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}">下载</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</div>
								</div>
							</div>
						</div>
				
			    	</div>
			    </div>
			
			   <!-- 实用文件 -->
			   	<div class="row">
			    	<div class="col-sm-12">
			    			<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>实用文件</h5>
							</div>
							<div class="ibox-content">
							<div class="row">
							<div class="col-sm-6">
								<table>
									<tbody>
										<c:forEach items="${wsfileList}" var="htfile" begin="0" step="2">
											<tr>
											    <td><span class="label label-warning">文</span></td>
												<td>
													<a target="_blank" style="color: #666666" href="${htfile.downloadUrl}">${htfile.fileTitle}</a>
												</td>
												<td><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}">下载</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="col-sm-6">
								<table>
									<tbody>
										<c:forEach items="${wsfileList}" var="htfile" begin="1" step="2">
											<tr>
											    <td><span class="label label-warning">文</span></td>
												<td>
													<a target="_blank" style="color: #666666" href="${htfile.downloadUrl}">${htfile.fileTitle}</a>
												</td>
												<td><a class="btn btn-success" href="${basePath }${htfile.downloadUrl}">下载</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>	
								
							</div>
						</div>
				
			    	</div>
			    </div>
			
			    <!-- end -->
			</div>
		   </div>
		<!-- 用户登录end -->
	</div>
	<!-- 底部文件 -->
	<jsp:include page="/common/_footer.jsp"></jsp:include>
	<jsp:include page="/common/_script.jsp"></jsp:include>
</body>

</html>