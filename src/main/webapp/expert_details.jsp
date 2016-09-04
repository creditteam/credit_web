<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
    	专家顾问库-<c:if test="${user.userStatus eq 7}">资深不良处置专家</c:if>
    	<c:if test="${user.userStatus eq 8}">资深诉讼律师</c:if>
    	<c:if test="${user.userStatus eq 9}">资深财经法制媒体人</c:if>
    </title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper">
                <div class="container">
     

                  
                  <!-- 债权信息 begin -->
                  <div class="col-sm-12">
                  <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>个人简介</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                     <!-- 专家详情 -->
                     <div class="row">
						<div class="col-md-4">
							<img class="img-circle" src="${basePath}${user.userHeadImages}" alt="" id="expertImg"
								style="width: 120px; height: 160px; margin-top: 10px">
								<div class="bdsharebuttonbox bdshare-button-style0-16" style="margin-left: 43%;" data-bd-bind="1469635014810">
									<!-- <a href="#" class="bds_more" data-cmd="more"></a> -->
									<a class="" onclick="javascript:void(0)">分享到：</a>
									<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
									<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
									<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
									<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">
									<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>		
								</div>
						</div>
						<div class="col-md-8">
							<h3 id="expertName">${user.nickname}</h3>
							<b>简介：</b><p id="expertRmk" style="font-size: 16px;">${user.description}</p>
						</div>

					 </div>
                    <!--  -->
					</div>
                </div>
            </div>
     
                  <!-- 债权信息  end-->
                </div>
            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
</body>

</html>