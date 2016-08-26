<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收债权管理|债权追收信息</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<style type="text/css">
		html,body {
			height: 100%;
		}
	</style>
  </head>
	<jsp:include page="mobile_meta.jsp"></jsp:include>
<body>

<div class="main-container" style="height:100%">
	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
	<div class="row">
		<div class="col-md-12" >
			<div >
			   <div class="modal-dialog">
			      <div class="modal-content">
			         <div class="modal-header">
			            <h4 class="modal-title" id="oblModalLabel" >
			               	债权追收详细信息
			            </h4>
			         </div>
			         <div class="modal-body">
			           	<span class="list-group-item active" >
						  债权基本信息
						</span>
						<span class="list-group-item" >债权类型：
						    <c:if test="${credit.crType==1 }">民间借贷</c:if>
						    <c:if test="${credit.crType==2 }">应收账款</c:if>
						    <c:if test="${credit.crType==3 }">银行借贷</c:if>
						    <c:if test="${credit.crType==4 }">互联网金融</c:if>
						    <c:if test="${credit.crType==5 }">小额信贷</c:if>
						    <c:if test="${credit.crType==6 }">典当担保</c:if>
						    <c:if test="${credit.crType==7 }">司法裁决</c:if></span>
						<span class="list-group-item" >债务人名称：${credit.debtName}</span>
						<span class="list-group-item" >所在省份：${credit.debtProvince}</span>
						<span class="list-group-item" >所在城市：${credit.debtCity}</span>
						<span class="list-group-item" >处置方式：
							<c:forEach items="${credit.disTypes}" var="item">
								<c:if test="${item eq '1'}">诉讼&nbsp;</c:if>
								<c:if test="${item eq '2'}">催收&nbsp;</c:if>
								<c:if test="${item eq '3'}">债权转让&nbsp;</c:if>
							</c:forEach></span>
						<span class="list-group-item" style=" color: #f0841d">债权金额：${credit.crAmount} (万元)</span>
						<span class="list-group-item" >佣金范围：${credit.commisionRange}</span>
						<span class="list-group-item" >发布日期：${credit.openDate}</span>
						<span class="list-group-item" >债权开始日期：<fmt:formatDate value="${credit.agreedDate}" type="date" dateStyle="long"/></span>
						
						<span class="list-group-item active" >高级信息</span>
						<span id="lsg10" class="list-group-item" >债权方联系人：${user.nickname}</span>
						<span id="lsg11" class="list-group-item" >债权方联系电话：${user.userPhone}</span>
						<span id="lsg12" class="list-group-item" >债权凭证：
							<c:forEach items="${credit.debtProofs}" var="item">
								<c:if test="${not empty item}">
								<a href="javascript:void(0)" onclick="showBigImage('${basePath}${item}')">
									<img alt="" src="${basePath}${item}" width="50px" height="50px"/>&nbsp;&nbsp;
								</a>
								</c:if>
							</c:forEach>
						</span>
						<span id="lsg13" class="list-group-item" >债权描述：${user.description}</span>
						<span class="list-group-item">
							<table width="100%">
								<tr>
									<td>居间协议(前期)：</td>
									<td><c:forEach items="${agreeList}" var="item">
										<c:if test="${not empty item}">
											<c:if test="${item.agreeType eq '1'}">
												<a href="${basePath }${item.agreeSample}" target="_self">《居间服务协议(前期)》</a><br>
											</c:if>
										</c:if>
									</c:forEach>
									</td>
								</tr>
								<tr style="height:60px">
									<td align="right">处置协议：</td>
									<td><c:forEach items="${agreeList}" var="item">
										<c:if test="${not empty item}">
											<c:if test="${item.agreeType eq '2'}">
												<a href="${basePath }credit/imgDetail?imageUrl=${basePath}${item.agreeImg}" target="_blank">
													<img alt="" src="${basePath}${item.agreeImg}" width="50px" height="50px"/>&nbsp;&nbsp;
												</a>
											</c:if>
										</c:if>
									</c:forEach>
									</td>
								</tr>
								<tr>
									<td>居间协议(后期)：</td>
									<td>
										<c:forEach items="${agreeList}" var="item">
											<c:if test="${not empty item}">
												<c:if test="${item.agreeType eq '3'}">
													<a href="${basePath }credit/imgDetail?imageUrl=${basePath}${item.agreeImg}" target="_blank">
														<img alt="" src="${basePath}${item.agreeImg}" width="50px" height="50px"/>&nbsp;&nbsp;
													</a>
												</c:if>
											</c:if>
										</c:forEach>
									</td>
								</tr>
							</table>
						</span>
						<input type="hidden" id="lsg14" />
						
			         </div>
			         <div class="modal-footer">
			            <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:history.go(-1)">
			              	 返回
			            </button>
			         </div>
			      </div><!-- /.modal-content -->
			</div><!-- /.modal -->
			</div>
		</div>
	</div>
	<div style="height:55px;"></div>
</div>
<div class="modal fade" id="creditImgModal" tabindex="-1" role="dialog"
		aria-labelledby="xuansModalLabel" aria-hidden="true" >
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="xuansModalLabel">债权凭证</h4>
			</div>
			<div class="modal-body">
				<img alt="" src="" id="creditBigImg" class="carousel-inner img-responsive img-rounded"/>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal" style="font-size: 16px">关闭</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="mobile_footer.jsp"></jsp:include>
<script type="text/javascript">
function showBigImage(url){
	$("#creditBigImg").attr("src",url);
	$("#creditImgModal").modal('show');
}
function goBack(){
	window.location.href = "${basePath}credit/list?userId=${userInfo.id}&creditType=1";
}
</script>
</body>
</html>
