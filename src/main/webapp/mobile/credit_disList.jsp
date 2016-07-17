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
    <title>快易收债权管理|债权信息</title>
    
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
	<link href="${basePath }hplus/css/kkpager_orange.css" rel="stylesheet">
<body>

<div class="main-container" style="height:100%">
	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
	<div class="row">
		<div class="col-md-12" >
			<table class="table table-striped" style=" text-align:center; ">
			   <caption style="text-align:center;">债权信息</caption>
			   <thead>
			      <tr>
			         <th style="text-align:center;">所在地</th>
			         <th style="text-align:center;">金额(万元)</th>
			         <th style="text-align:center;">佣金</th>
			         <th style="text-align:center;"><a class="btn btn-success" href="javascript:publishInfo();" ><i class="lyphicon glyphicon-plus"></i>发布项目</a></th>
			      </tr>
			   </thead>
			   <tbody id="obltb_body">
			   
				   <c:forEach items="${pd.data }" var="credit">
						<tr onclick="javascript:window.location.href = '${basePath}credit/creditDetails?id=${credit.id}'">
							<td><span class="label label-warning">${credit.debtProvince}</span></td>
							<td><i class="fa fa-clock-o"></i> ${credit.crAmount}</td>
							<td class="text-navy"><i class="fa fa-level-up"></i>${credit.commisionRange}</td>
							<td>
								<c:if test="${credit.crStatus eq '1'}">
									<button  style="background-color: red; border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">招标中</button>
									</c:if>
									<c:if test="${credit.crStatus eq '2'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">处置中</button>
									</c:if>
									<c:if test="${credit.crStatus eq '3'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">已结束</button>
								</c:if>
							</td>
						</tr>
					</c:forEach>
			   
			   </tbody>
			</table>
		</div>
		<gvtv:newPage href="${basePath }credit/navlist?creditType=1"></gvtv:newPage>
	</div>
</div>

<jsp:include page="mobile_footer.jsp"></jsp:include>

<script type="text/javascript">

function publishInfo(){
	if('${userInfo}' == null || '${userInfo}' == ''){
		alert("请先登录后发布!");
		window.location.href = "${basePath}user/tologin";
	}else{
		window.location.href = "${basePath }credit/saveCredit?userId=${userInfo.id}";
	}
}

/* function takeShowcc() {
	 if (${user.userid < 0}) {
		alert("请先登录系统，再点击招标");
		return;
	}
	 if (!$("#zqfbxycb").is(':checked')) {
			alert("您需要同意快易收债权管理O2O平台抢标告知书才能完成抢标");
			return false;
		}
	 var did = $("#lsg14").val();
	 if (${user.ctype == 1}) {
		 $.ajax({
			 type: "POST", //用POST方式传输
			 dataType: "text", //数据格式:JSON
			 url: "IdentTack", //目标地址
			 data: "did=" + did+"&zxz="+${user.userid},
			 error: function (XMLHttpRequest, textStatus, errorThrown) {
				 alert("抢单失败");
			 },
			 success: function (msg){
				 var ddid="qd"+did;
				 alert(msg);
				 document.getElementById(ddid).disabled=true;
				 //$("#modalqianb").attr("disabled", "disabled");
				//$("#xieyqianbbtn").attr("disabled", "disabled");
			 }
		 });
	} else {
		alert("你不是处置方，无法抢单");
	}	
} */


</script>
  </body>
</html>