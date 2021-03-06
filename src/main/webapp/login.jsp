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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>快易收-欢迎您登陆快易收债权管理系统</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
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
                        <h5>登录表单 </h5>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-6 b-r" style="text-align: center;">
                                <h3 class="m-t-none m-b">登录</h3>
                                <p>欢迎登录本站(⊙o⊙)</p>
                                <span class="label label-warning">${result }</span><br/>
                                <form role="form" action="${basePath }user/login" method="post" target="_self">
                                    <div class="form-group" style="line-height: 40px;">
		                                <label class="col-sm-3 control-label" style="text-align: right">用户名：</label>
		                                <div class="col-sm-3">
		                                    <input type="text" name="loginName" placeholder="请输入您注册的E-mail或手机号码" class="form-control" required="" aria-required="true" style="width:360px"/>
		                                </div>
		                            </div>
                                    <div class="form-group" style="padding-top: 60px;line-height: 40px;">
                                        <label class="col-sm-3 control-label" style="text-align: right">密码：</label>
                                        <div class="col-sm-3">
                                        	<input type="password" name="password" placeholder="请输入密码" class="form-control" required="" aria-required="true" style="width:360px"/>
                                        </div>
                                    </div>
                                    <div class="form-group" style="padding-top: 40px;">
		                                <label class="col-sm-5 control-label" style="text-align: right;"><input type="checkbox" class="i-checks">自动登录&nbsp; <a href="${basePath }forgot_pwd.jsp">忘记密码?</a></label>
		                                <div class="col-sm-3" style="text-align: right">
		                                	<button class="btn btn-sm btn-primary m-t-n-xs" type="submit"><strong>登 录</strong></button>
		                                </div>
		                            </div>
                                </form>
                            </div>
                            <div class="col-sm-6">
                                <h4>还不是会员？</h4>
                                <p>您可以注册一个新账户
                                <a href="${basePath }register.jsp">
                                <button class="btn btn-sm btn-primary m-t-n-xs" type="button"><strong> 注册</strong></button>
                                </a>
                                </p>
                                <p class="text-center">
                                    <a href="${basePath }register.jsp"><i class="fa fa-sign-in big-icon"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 用户登录end -->
    
    </div>
    </div>
    <!-- 底部文件 -->
	<jsp:include page="/common/_footer.jsp"></jsp:include>
    <jsp:include page="/common/_script.jsp"></jsp:include>
</body>


</html>