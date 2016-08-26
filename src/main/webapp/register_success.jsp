<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <Link Rel="icon" href="/hplus/img/kuaiyishou.ico" type=”image/x-icon”>

    <title>快易收-专注债权处置</title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>
    <jsp:include page="/common/_script.jsp"></jsp:include>
</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper">
                <div class="container" style="padding-top: 5px">
                  <table style="width:100%;font-size:14px">
						<tr height="40px">
							<td align="center"><b>注册成功!</b></td>
						</tr>
						<tr>
							<td align="center">系统将在<b id="wait" style="font-size:16px">5</b>秒后跳转，如长时间未反应，请点击<a href="${basePath}user/tologin" target="_self">此处</a></td>
						</tr>
					</table>
   
                </div>

            </div>
        
			<!-- 底部文件 -->
			<div class="gray-bg">
			<div class="subfooter navbar-fixed-bottom" style="background-color: #FF7F50;">
					<div  class="container">
						<div class="row" style="margin-top: 10px">
							<div class="col-md-2" style="color: #fff;">
								<div class="thum22">
								 	<img src="${basePath }hplus/img/kuaiyishou.jpg" class="img-rounded" width="100px" height="100px"  style="margin-left:10px "/>
						            <div>
						              <h5>微信扫一扫，关注我们</h5>
						            </div>
						         </div>
							</div>
							<div class="col-md-2" style="color: #fff;">
								<ul class="" style="margin-top: 20px">
									<li><a target="_blank" href="${basePath }help/help.jsp#about_us"
										style="color: #fff">关于我们</a></li>
									<li><a target="_blank" href="${basePath }help/help.jsp#service_us"
										style="color: #fff">服务协议</a></li>
									<li><a target="_blank" href="${basePath }help/help.jsp#job"
										style="color: #fff">人才招聘</a></li>
									<li><a target="_blank" href="${basePath }help/help.jsp#idea"
										style="color: #fff">意见反馈</a></li>
								</ul>
				
							</div>
							<div class="col-md-3" style="color: #fff;margin-top: 20px">
								<p>客服热线</p>
								<p style="font-size: 25px">4008-338-997</p>
								<p>服务时间：09:00-21:00</p>
							</div>
							<div class="col-md-4" style="color: #fff;margin-top: 35px">
								<p class="text-left">Copyright © 2016 易收（深圳）网络科技有限公司 版权所有</p>
								<p>
									备案号：<a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" style="color: #fff;">粤ICP备16039401号-1</a>
								</p>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    	var time = 5;
    	var href = '${basePath}user/tologin';
	    var interval = setInterval(function(){
	    	--time;
	    	if(time <= 0) {
	    		window.location.href = href;
	    		clearInterval(interval);
	    	};
	    	$("#wait").html(time);
	    }, 1000);
    </script>
</body>
</html>