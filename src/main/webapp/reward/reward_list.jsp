<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
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
								<h5>线索悬赏列表</h5>
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
											<th>类型</th>
											<th>发布时间</th>
											<th>所在地</th>
											<th>悬赏金额</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${pd.data}" var="reward">
										<tr>
											<td><span class="label label-warning">
								    <c:if test="${reward.rewardType==0}">个人债权</c:if>
                                    <c:if test="${reward.rewardType==1}">企业债权</c:if>
                                    <c:if test="${reward.rewardType==2}">预期贷款</c:if>
                                    <c:if test="${reward.rewardType==3}">固定资产</c:if>
                                    <c:if test="${reward.rewardType==4}">国际债权</c:if>
											</span></td>
											<td><fmt:formatDate value="${reward.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
											<td>${reward.province }</td>
											<td>${reward.rewardAmount }金额(万元)</td>
											<td><span class="label label-warning">
											<c:if test="${reward.rewardStatus==1}">发布中</c:if>
									        <c:if test="${reward.rewardStatus==0}">已结束</c:if>
											</span></td>
											<td><a href="${basePath }reward/navRewardDetails?id=${reward.id}">查看</a></td>
										</tr>
										</c:forEach>
										<%--
										<tr>
											<td><span class="label label-warning">找车</span></td>
											<td>2016-07-08 11:22:33</td>
											<td>张三</td>
											<td>5.00金额(万元)</td>
											<td><span class="label label-warning">招标中</span></td>
											<td><a href="${basePath }reward/reward_details.jsp">查看</a></td>
										</tr>
										<tr>
											<td><span class="label label-warning">找房产</span></td>
											<td>2016-07-08 11:22:33</td>
											<td>湛*市</td>
											<td>11.00金额(万元)</td>
											<td><span class="label label-warning">招标中</span></td>
											<td><a href="${basePath }reward/reward_details.jsp">查看</a></td>
										</tr>
										 --%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					 <!-- page begin
					   <div class="hr-line-dashed"></div>
                        <div class="text-center">
                            <div class="btn-group">
                                <button class="btn btn-white" type="button"><i class="fa fa-chevron-left"></i>
                                </button>
                                <button class="btn btn-white">1</button>
                                <button class="btn btn-white  active">2</button>
                                <button class="btn btn-white">3</button>
                                <button class="btn btn-white">4</button>
                                <button class="btn btn-white">5</button>
                                <button class="btn btn-white">6</button>
                                <button class="btn btn-white">7</button>
                                <button class="btn btn-white" type="button"><i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
					 -->
					 <!-- page end -->
					<gvtv:newPage href="reward/navlist"></gvtv:newPage>
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