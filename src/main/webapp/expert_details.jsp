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
    <title>快易收-您的债权管理专家</title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper wrapper-content">
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
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                     <!-- 专家详情 -->
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