<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>
    	<c:if test="${user.userStatus eq '7'}">资深处置专家:</c:if>
    	<c:if test="${user.userStatus eq '8'}">资深诉讼律师:</c:if>
    	<c:if test="${user.userStatus eq '9'}">财经法制媒体人:</c:if>
    	${user.nickname}
    </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<jsp:include page="mobile_meta.jsp"></jsp:include>
	 <link href="${basePath}hplus/css/share_style.css" rel="stylesheet">
 	<link href="${basePath}hplus/css/share_popup.css" rel="stylesheet">
 	<link href="${basePath}hplus/css/select_share.css" rel="stylesheet">
	<script src="${basePath }hplus/js/share.js"></script>
	
  </head>
  <body>
  <div class="main-container" style="height:100%">
  <jsp:include page="mobile_top_logo.jsp"></jsp:include>
	<div class="row">
		<div class="col-md-12" >
		<div class="">
			<div class="">
				<div class="modal-header">
					<h4 class="modal-title">个人简介</h4>
				</div>
				<div class="bdsharebuttonbox bdshare-button-style0-16" style="margin-left: 20%;" data-bd-bind="1469635014810">
					<a class="" onclick="javascript:void(0)">分享到：</a>
					<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
					<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
					<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
					<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">
					<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>	
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<img class="img-circle" src="${basePath}${user.userHeadImages}" alt="" id="expertImg"
								style="width: 120px; height: 160px; margin-top: 10px">
						</div>
						<div class="col-md-8">
							<h3 id="expertName">${user.nickname}</h3>
							<b>简介：</b><p id="expertRmk" style="font-size: 16px;">${user.description}</p>
						</div>

					</div>
				</div>
				<div class="modal-footer">
					<!-- <button type="button" class="btn btn-sm btn-primary"
						class="btn btn-default" data-dismiss="modal">关闭</button> -->
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<div class="subfooter" style="background-color: #0b6070; margin-top: 50px"></div>

<jsp:include page="mobile_footer.jsp"></jsp:include>
</body>
</html>
