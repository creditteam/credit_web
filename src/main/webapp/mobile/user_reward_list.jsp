<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收债权管理|线索悬赏</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<jsp:include page="mobile_meta.jsp"></jsp:include>
	<style type="text/css">
			html,body {
				height: 100%;
			}
		</style>
  </head>
  
  <body>
    <div class="main-container" style="height:100%">
    <jsp:include page="mobile_top_logo.jsp"></jsp:include>
    	<nav class="navbar navbar-default" role="navigation">
		   <div class="navbar-header">
		      <a class="navbar-brand" href="javascript:goBack()">&lt;返回</a>
		   </div>
		</nav>
	    <div class="row">
	    	<div class="col-md-12" >
	    		<table width="99%">
					<tr>
						<td align="left"><h4>&nbsp;&nbsp;线索悬赏</h4></td>
						<td align="right"><a href="${basePath }reward/saveReward?userId=${userInfo.id}" class="btn btn-success btn-sm" target="_self">发布项目</a></td>
					</tr>
				</table>
		    	<table class="table table-striped" style="text-align: center">
				   <thead>
				      <tr>
				         <th style="text-align:center;">类型</th>
				         <th style="text-align:center;">所在地</th>
				         <th style="text-align:center;">悬赏金额(元)</th>
				         <th style="text-align:center;">状态</th>
				      </tr>
				   </thead>
				   <tbody>
						<c:forEach items="${pd.data}" var="reward">
						    <tr onclick="showRewardInfo('${reward.id}')">
								<td><span class="label label-warning">
								    <c:if test="${reward.rewardType==0}">找人</c:if>
			                        <c:if test="${reward.rewardType==1}">找车辆</c:if>
			                        <c:if test="${reward.rewardType==2}">找房产</c:if>
			                        <c:if test="${reward.rewardType==3}">找应收款</c:if>
			                        <c:if test="${reward.rewardType==4}">其他</c:if>
								</span></td>
								<td>${reward.province }</td>
								<td>
									<c:if test="${reward.rewardAmount eq '3000'}">${reward.rewardAmount } (元以上)</c:if>
									<c:if test="${reward.rewardAmount ne '3000'}">${reward.rewardAmount } (元)</c:if>
								</td>
								<td><span class="label label-warning">
								<c:if test="${reward.rewardStatus==1}">发布中</c:if>
						        <c:if test="${reward.rewardStatus==0}">已结束</c:if>
								</span></td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="4">
								<div class="hr-line-dashed"></div>
								<gvtv:newPage href="${basePath}reward/list?userId=${userInfo.id}" pageType="mobile"></gvtv:newPage>
							</td>
						</tr>
				   </tbody>
				</table>
			</div>
	    </div>
    </div>

	<div class="modal fade" id="xuansModal" tabindex="-1" role="dialog"
		aria-labelledby="xuansModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="xuansModalLabel">悬赏详细信息</h4>
				</div>
				<div class="modal-body">
					<span class="list-group-item active"><h4>悬赏基本信息</h4></span>
					<span id="xslsg1" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg2" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg3" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg4" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg5" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg6" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg7" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg8" class="list-group-item" style="font-size: 16px"></span>

					<span class="list-group-item active"><h4>高级信息</h4> </span>
					<span id="xslsg10" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg12" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg15" class="list-group-item" style="font-size: 16px"></span>
					<span id="xslsg13" class="list-group-item" style="font-size: 16px"></span>
					<input type="hidden" id="xslsg14" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" style="font-size: 16px">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="rewardImgModal" tabindex="-1" role="dialog"
		aria-labelledby="xuansModalLabel" aria-hidden="true" >
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="xuansModalLabel">图片</h4>
			</div>
			<div class="modal-body">
				<img alt="" src="" id="rewardBigImg"  class="carousel-inner img-responsive img-rounded"/>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal" style="font-size: 16px">关闭</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="mobile_footer.jsp"></jsp:include>
<style type="text/css">
	.navbar-nav>li>a {
		padding-top: 10px;
		padding-bottom: 10px;
	}
	.navbar-brand {
		height: 38px;
		padding-top: 9px;
	}
	.navbar {
		min-height: 38px;
	}
	.navbar-toggle {
		margin-top: 4px;
		margin-bottom: 4px;
	}
	</style>
<script type="text/javascript">
function showBigImage(url){
	$("#rewardBigImg").attr("src",url);
	$("#rewardImgModal").modal('show');
}
function showRewardInfo(id){
	 
	 $.ajax({
		 type: "POST", //用POST方式传输
		 dataType: "json", //数据格式:JSON
		 url: "${basePath}reward/mlRewardInfo", //目标地址
		 data: {"id":id},
		 error: function (XMLHttpRequest, textStatus, errorThrown) {
			 alert("查看订单失败，请稍候再试");
		 },
		 success: function (msg){
			 var reType = msg.rewardType;
			 if(msg.rewardType == 0){
				 reType = "找人";
			 }else if(msg.rewardType == 1){
				 reType = "找车辆";
			 }else if(msg.rewardType == 2){
				 reType = "找房产";
			 }else if(msg.rewardType == 3){
				 reType = "找应收款";
			 }else if(msg.rewardType == 4){
				 reType = "其他";
			 }
			 var rewardStatus = "";
			 if(msg.rewardStatus == 1){
				 rewardStatus = "发布中"
			 }else{
				 rewardStatus = "已结束"
			 }
			 $("#xslsg1").text("悬赏类型：        "+reType);
			 $("#xslsg2").text("所在地：    "+ msg.city);
			 if(msg.rewardAmount == '3000'){
				$("#xslsg3").text("金额   ：    "+msg.rewardAmount + "元以上");
			 }else{
				$("#xslsg3").text("金额   ：    "+msg.rewardAmount + "元");
			 }
			 $("#xslsg4").text("姓名：        "+ msg.rewardName);
			 if(msg.rewardType == '2'){
				 $("#xslsg5").text("车牌号：        "+ msg.carBrand);
			 }else{
				 $("#xslsg5").text("身份证：        "+ msg.cartId);
			 }
			 var createTime = new Date(msg.createTime);
			 var endTime = new Date(msg.endTime);
			 if(createTime != ''){
				 createTime = createTime.getFullYear()+'-'+(createTime.getMonth()+1)+'-'+createTime.getDate();
			 }
			 if(endTime != ''){
				 endTime = endTime.getFullYear()+'-'+(endTime.getMonth()+1)+'-'+endTime.getDate();
			 }
			 
			 $("#xslsg6").text("发布日期：        "+ createTime);
			 $("#xslsg7").text("有效日期：        "+ endTime);
			 $("#xslsg8").text("状态：    "+rewardStatus);
			 
			 $("#xslsg10").text("发布者：    请联系平台获取");
			 $("#xslsg12").text("联系电话：请在联系快易收平台方获取");
			 if(msg.imagesArry != ''){
				 $.each(msg.imagesArry, function (key, val) {
					 $("#xslsg15").html("<img src='${basePath}"+val+"' width='50px' heitht='50px' id='img"+key+"'/>&nbsp;&nbsp;");
					 $("#img"+key).click(function(){
						 showBigImage('${basePath}'+val);
					 });
			        });
			 }
			 $("#xslsg13").text("悬赏描述：        "+msg.description);
			 
			 $("#xslsg14").val(msg.id);
			 $("#xuansModal").modal("show");
		 }
	 });
}
function goBack(){
	window.location.href = "${basePath }user/tologin";
}
</script>
  </body>
</html>
