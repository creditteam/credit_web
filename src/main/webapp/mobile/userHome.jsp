<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收|用户中心</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"><!-- Mobile Meta -->
	<jsp:include page="mobile_meta.jsp"></jsp:include>
	<link href="${basePath }hplus/css/bootstrapValidator.min.css" rel="stylesheet">
	<script src="${basePath }hplus/js/bootstrapValidator.min.js"></script>
	<script src="${basePath }hplus/js/bootstrap_zh_CN.js"></script>
  </head>
  
  <body>
  <div class="main-container" style="height: 100%">
  
    <jsp:include page="mobile_top_logo.jsp"></jsp:include><br/>
    	<div class="row">
    		
    		<div class="col-md-12" style="height:80px;line-height:80px;overflow:hidden;background-image: url(${basePath}hplus/img/ad_27.jpg);">
    			<table width="98%" height="98%">
    				<tr onclick="showDetails()">
    					<td align="left">
    						<img alt="" src="${basePath}hplus/img/yh_01.png" class="img-circle" style="width: 70px;height:70px;"/>
    						欢迎：<c:if test="${not empty userInfo}">${userInfo.nickname}</c:if>
    					</td>
    					<td align="right">
    						<span><b>></b>&nbsp;&nbsp;</span>
    					</td>
    				</tr>
    			</table>
    		</div>
    	</div>
    	<div class="row">
	    	<div class="col-md-12">
	   			<table class="table table-bordered" width="98%" style="margin-top: 10px;border-left: 0px;border-right: 0px;">
	   				<tbody>
		   				<tr valign="middle" onclick="toDisList()">
		   					<td align="left" style="border-left: 0px;border-right: 0px;">
		   						&nbsp;&nbsp;<img alt="" src="${basePath}hplus/img/bj03.png" class="img-circle" style="width: 30px;height:30px;">&nbsp;债权追收
		   					</td>
		   					<td align="right" style="border-left: 0px;border-right: 0px;">
		   						<span><b>></b>&nbsp;&nbsp;</span>
		   					</td>
		   				</tr>
		   				<tr valign="middle" onclick="toTraList()">
		   					<td align="left" style="border-left: 0px;border-right: 0px;">
		   						&nbsp;&nbsp;<img alt="" src="${basePath}hplus/img/bj02.png" class="img-circle" style="width: 30px;height:30px;">&nbsp;债权转让
		   					</td>
		   					<td align="right" style="border-left: 0px;border-right: 0px;">
		   						<span><b>></b>&nbsp;&nbsp;</span>
		   					</td>
		   				</tr>
		   				<tr valign="middle" onclick="toRewardList()">
		   					<td align="left" style="border-left: 0px;border-right: 0px;" valign="middle">
		   						&nbsp;&nbsp;<img alt="" src="${basePath }hplus/img/bj10.png" class="img-circle" style="width: 30px;height:30px;">&nbsp;悬赏信息
		   					</td>
		   					<td align="right" style="border-left: 0px;border-right: 0px;" valign="middle">
		   						<span><b>></b>&nbsp;&nbsp;</span>
		   					</td>
		   				</tr>
	   				</tbody>
	   			</table>
	   			
	   		</div>
   		</div>
    	<div class="form-group" style="padding-top: 10px;"> 
				<div class="col-xs-6 link">
					<p class="text-center remove-margin">
						<a href="javascript:void(0)" onclick="loginOut()">退出登录</a>
					</p>
				</div>
				<div class="col-xs-6 link">
					<p class="text-center remove-margin">
						<a href="javascript:void(0)" data-toggle="modal" data-target="#oblsModal">修改密码</a>
					</p>
				</div>
			</div>
    	
</div>
<div class="modal fade" id="oblsModal" tabindex="-1" role="dialog"
	aria-labelledby="oblModalLabel" aria-hidden="true">
	<form action="#" class="bs-example bs-example-form" method="POST" role="form" id="upPassForm">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="oblModalLabel">密码修改</h4>
			</div>
			<div class="modal-body">

				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">原&nbsp;&nbsp;密&nbsp;&nbsp;码</span>
						<input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="原密码" maxlength="16">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">新&nbsp;&nbsp;密&nbsp;&nbsp;码</span>
						<input type="password" class="form-control" id="newpassowrd" name="newpassowrd" placeholder="新密码" maxlength="16">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">确认密码</span>
						<input type="password" class="form-control" id="conpassowrd" name="conpassowrd" placeholder="确认密码" maxlength="16">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						修改之后请使用新密码登录!
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-ms btn-success btn-block" onclick="updUserPass()">提交
				</div>
			</div>
		</div>
	</div>
	</form>
</div>
    <jsp:include page="mobile_footer.jsp"></jsp:include>
    <script type="text/javascript">
    	function updUserPass(){
    		var b = $("#upPassForm").data("bootstrapValidator");
    		b.validate();
    		if(b.isValid()){
    			$.ajax({
    				url: "${basePath}user/updUsePwd",    //请求的url地址
    			    dataType: "json",   //返回格式为json
    			    async: true, //请求是否异步
    			    data: { "userPwd": $("#userPwd").val(),"newpassowrd":$("#newpassowrd").val()},//参数值
    			    type: "post", 
    			    success: function(data) {
    			    	if(data != ''){
   			    			alert(data);
   			    			$("#oblsModal").modal("hide");
   			    			$("#upPassForm")[0].reset();
    			    	}
    			    }
    			});
    		}
    		
    	}
    	function showDetails(){
    		window.location.href = "${basePath}user/userdetails?id=${userInfo.id}";
    	}
    	function toDisList(){
    		window.location.href = "${basePath}credit/list?userId=${userInfo.id}&creditType=1";
    	}
    	function toTraList(){
    		window.location.href = "${basePath}credit/list?userId=${userInfo.id}&creditType=2";
    	}
    	function toRewardList(){
    		window.location.href = "${basePath}reward/list?userId=${userInfo.id}";
    	}
    	
    	$(function(){
    		$('#upPassForm').bootstrapValidator({
    	        message: 'This value is not valid',
    	        feedbackIcons: {
    	            valid: 'glyphicon glyphicon-ok',
    	            invalid: 'glyphicon glyphicon-remove',
    	            validating: 'glyphicon glyphicon-refresh'
    	        },
    	        fields: {
    	        	newpassowrd: {
    	                validators: {
    	                	notEmpty: {
    	                        message: '新密码不能为空'
    	                    },
    	                    identical: {
    	                        field: 'conpassowrd',
    	                        message: '新密码和确认密码不一致!'
    	                    }
    	                }
    	            },
    	            conpassowrd: {
    	                validators: {
    	                	notEmpty: {
    	                        message: '重复密码不能为空'
    	                    },
    	                    identical: {
    	                        field: 'newpassowrd',
    	                        message: '新密码和确认密码不一致!'
    	                    }
    	                }
    	            },
    	            userPwd: {
    	            	validators: {
    	            		notEmpty: {
    	                        message: '原不能为空'
    	                    }
    	            	}
    	            },
    	            submitHandler: function (validator, form, submitButton) {
    	                alert("submit");
    	            }
    	        }
    	    });
    		
    		if('${userInfo}' == '' || '${userInfo}' == null){
    			window.location.href = '${basePath }user/tologin';
    		}
    	});
    	function loginOut(){
    		if(confirm("确定退出登录?")){
    			window.location.href = "${basePath }user/loginout";
    		}
    	}
    </script>
  </body>
</html>
