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
    
    <title>快易收债权管理|专家顾问详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<jsp:include page="mobile_meta.jsp"></jsp:include>
	
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
