<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
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
  </head>
	<jsp:include page="mobile_meta.jsp"></jsp:include>
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
					<td align="left"><h4>&nbsp;&nbsp;债权追收</h4></td>
					<td align="right"><a href="${basePath }credit/saveCredit?userId=${userInfo.id}&creditType=${creditType}" class="btn btn-success btn-sm" target="_self">发布项目</a></td>
				</tr>
			</table>
			<table class="table table-striped" style=" text-align:center; ">
			   <thead>
			      <tr>
			         <th style="text-align:center;">所在地</th>
			         <th style="text-align:center;">金额(万元)</th>
			         <th style="text-align:center;">佣金</th>
			         <th style="text-align:center;"></th>
			      </tr>
			   </thead>
			   <tbody id="obltb_body">
			   
				   <c:forEach items="${pd.data }" var="credit">
						<tr onclick="javascript:window.location.href = '${basePath}credit/creditInfo?id=${credit.id}'">
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
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">还款中</button>
								</c:if>
								<c:if test="${credit.crStatus eq '4'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">已结束</button>
							</td>
						</tr>
					</c:forEach>
			   
			   </tbody>
			</table>
		</div>
		<gvtv:newPage href="${basePath }credit/list?creditType=1&userId=${userInfo.id}" pageType="mobile"></gvtv:newPage>
		<div class="hr-line-dashed" style="padding-bottom: 40px;"></div>
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
		function goBack(){
			window.location.href = "${basePath }user/tologin";
		}
	</script>
</body>
</html>
