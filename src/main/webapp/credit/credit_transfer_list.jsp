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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>快易收-欢迎您登陆快易收债权管理系统</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<jsp:include page="/common/_meta.jsp"></jsp:include>
</head>

<body class="gray-bg top-navigation">
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="/common/_menu.jsp"></jsp:include>
			<!-- 用户登录begin -->
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">

					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>债权转让列表</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown"
										href="table_basic.html#"> <i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="table_basic.html#">选项1</a></li>
										<li><a href="table_basic.html#">选项2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">

								<table class="table table-hover">
									<thead>
										<tr>
											<th>债权类型</th>
											<th>所在地</th>
											<th>债务人</th>
											<th>金额</th>
											<th>佣金范围</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${pd.data }" var="credit">
											<tr>
											    <td><span class="label label-warning">
												    <c:if test="${credit.crType==1 }">个人债权</c:if>
												    <c:if test="${credit.crType==2 }">企业债权</c:if>
												    <c:if test="${credit.crType==3 }">预期贷款</c:if>
												    <c:if test="${credit.crType==4 }">固定资产</c:if>
												    <c:if test="${credit.crType==5 }">资产包</c:if>
												    <c:if test="${credit.crType==6 }">国际债权</c:if>
											    </span></td>
												<td><span class="label label-warning">${credit.debtProvince }</span></td>
												<td>${credit.debtName }</td>
												<td><i class="fa fa-clock-o"></i> ${credit.crAmount }</td>
												<td class="text-navy"><i class="fa fa-level-up"></i>${credit.commisionRange}</td>
												<td><span class="label label-warning">${credit.crStatus }</span></td>
												<td><a href="${basePath }credit/creditDetails?id=${credit.id}" target="_self">查看</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
												
								 <div class="hr-line-dashed"></div>
								  <!-- page begin-->
			                     <gvtv:newPage href="${basePath }credit/navlist?creditType=${creditType }" pageType="pc"></gvtv:newPage>
								 <!-- page end -->
							</div>
						</div>
					</div>
					

					
				</div>
			</div>
		   </div>
		<!-- 用户登录end -->
	</div>
	<!-- 底部文件 -->
	<jsp:include page="/common/_footer.jsp"></jsp:include>
	<jsp:include page="/common/_script.jsp"></jsp:include>
</body>

</html>