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

    <title>快易收-您的债权管理专家</title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper wrapper-content">
                <div class="container">
                     <div class="row">
              <!-- 左边菜单 -->       
            <jsp:include page="/user/user_left.jsp"></jsp:include>
             <!-- 右边主内容 -->
             <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>重置用户密码</h5>
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
                    <span id="error" class="help-block m-b-none"><i class="fa fa-times-circle"></i>  用户密码错误</span>
                    <form class="form-horizontal m-t" id="commentForm" method="post" target="_self">
                    <input type="hidden" name="userId"  id="userId" value="${user.id }">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">姓名：</label>
                                <div class="col-sm-8">
                                    <input id="cname" name="name"  type="text" class="form-control" required="" aria-required="true" value="${user.userEmail }" readonly="readonly">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">旧密码：</label>
                                <div class="col-sm-8">
                                    <input id="oldpassowrd" type="password" class="form-control" name="oldpassowrd" minlength="6" required="" aria-required="true">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">新密码：</label>
                                <div class="col-sm-8">
                                    <input id="newpassowrd" type="password" class="form-control" name="newpassowrd" minlength="6" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                </div>
                            </div>
                        </form>
                                  
                    </div>
                </div>
            </div>
        </div>
                 
                 
                 
                 
                </div>

            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script>
       
    $('#commentForm').submit(function() {
		var newpassowrd=$("#newpassowrd").val();
		var oldpassowrd=$("#oldpassowrd").val();
		var userId=$("#userId").val();
		 $.ajax({
			 type: "POST", //用POST方式传输
			 dataType: "text", //数据格式:字符串
			 url: "${basePath}user/updatePwd", //目标地址
			 data: "password=" + newpassowrd+"&oldpassowrd="+oldpassowrd+"&id="+userId,
			 error: function (XMLHttpRequest, textStatus, errorThrown) {
				 alert("修改密码异常，请稍候再试");
			 },
			 success: function (msg){
				 alert(msg);
				 document.getElementById("backinputyzm").disabled=false;
			 }
		 });
	});
    
    
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>