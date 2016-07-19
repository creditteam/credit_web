<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>快易收债权管理|悬赏发布</title>

<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<Link Rel="icon" href="${basePath}hplus/img/kuaiyishou.ico" type=”image/x-icon”>
<link href="${basePath}hplus/css/bootstrap.min.css" rel="stylesheet">
<link href="${basePath}hplus/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="${basePath}hplus/js/jquery.min.js"></script>
<script src="${basePath}hplus/js/bootstrap-datetimepicker.js"></script>
<script src="${basePath}hplus/js/bootstrap-datetimepicker.zh-CN.js"></script>
<link href="${basePath }hplus/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="${basePath }hplus/js/bootstrapValidator.min.js"></script>
<script src="${basePath }hplus/js/bootstrap_zh_CN.js"></script>
</head>

<body>
	<div class="main-container">
		<jsp:include page="mobile_top_logo.jsp"></jsp:include>
		<nav class="navbar navbar-default" role="navigation">
		   <div class="navbar-header">
		      <a class="navbar-brand" href="javascript:goBack()">&lt;返回</a>
		   </div>
		</nav>
		<div class="row" style="background-color: #FF291A">
			<span style="color: #fff; ">悬赏信息描述越详细，悬赏成功的可能性越高</span>
		</div>
		<div class="form">
		<div class="col-sm-12">
		<div class="ibox-content">
			<form action="${basePath}reward/saveReward" id="rewardForm" method="post" role="form" class="form-inline" enctype="multipart/form-data">
				<input type="hidden" name="userId" value="${userId}"/>
				<div class="form-group">
					<label class="col-sm-3 control-label">悬赏类型:</label>
					<div class="col-sm-8">
						<select name="rewardType" id="rewardType" class="form-control" onchange="checkSelectType()">
							<option value="1">找人</option>
							<option value="2">找车辆</option>
							<option value="3">找房产</option>
							<option value="4">找应收账款</option>
							<option value="5">其它</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">悬赏金额(万元):</label>
					<div class="col-sm-8">
						<input id="rewardAmount" name="rewardAmount" type="text" class="form-control" onkeyup="convertCurrency(this.value,'currAmt')">
						<span class="help-block m-b-none" id="currAmt"></span>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">姓名：</label>
					<div class="col-sm-8">
						<input name="rewardName" id="rewardName" type="text" class="form-control" />
					</div>
				</div>
				<div class="form-group" id="cartIdDiv">
					<label class="col-sm-3 control-label">身份证:</label>
					<div class="col-sm-8">
						<input name="cartId" id="cartId" type="text" class="form-control" maxlength="20"/>
					</div>
				</div>
				<div class="form-group" id="carBrandDiv" style="display: none">
					<label class="col-sm-3 control-label">车牌号:</label>
					<div class="col-sm-8">
						<input name="carBrand" id="carBrand" type="text" class="form-control"  maxlength="15"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">所在城市:</label>
					<div class="col-sm-4">
						<select id="province" onchange="loadCity()" name="province" class="form-control">
							<option value="">请选择</option>
							<c:forEach items="${provinceList}" var="prov">
								<option>${prov}</option>
							</c:forEach>
						</select>
						</div>
						<div class="col-sm-4">
						<select id="city" name="city" class="form-control">
							<option value="">请选择</option>
						</select>
					</div>
				</div>
				<div class="form-group">
						<label class="col-sm-3 control-label"><h5 for="fileToUpload" class="col-sm-3 control-label">
						<b>照片</b><small>(身份证、个人近照等)</small>
						</h5></label>
						<div class="col-sm-8">
							<input class="form-control" type="file" name="uploadFile" id="uploadFile" />
						</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">悬赏有效期:</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="endTime" id="endTime" readonly="readonly">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">描述:</label>
					<div class="col-sm-8">
						<textarea id="description" name="description" class="form-control"
							rows="3" style="margin: 0px 0px 30px 0px !important;" maxlength="150"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<button type="submit" class="btn btn-lg btn-success btn-block">提交信息</button>
					</div>
				</div>
			</form>
			</div>
			</div>
		</div>
	<div style="padding-bottom: 40px">&nbsp;</div><br/>
	</div>
	<jsp:include page="mobile_footer.jsp"></jsp:include>
<style type="text/css">
	.navbar-nav>li>a {
		padding-top: 1px;
		padding-bottom: 1px;
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
	
	function checkSelectType(obj){
		var rewardType = $("#rewardType").val();
		if(rewardType == '2'){
			$("#carBrandDiv").show();
			/* $("#cartIdDiv").hide();
			$('#rewardForm').bootstrapValidator('addField','carBrand',{
				validators: {
                	notEmpty: {
                        message: '车牌号不能为空'
                    }
                }
			});
			$('#rewardForm').bootstrapValidator('removeField','cartId'); */
		}else{
			$("#carBrandDiv").hide();
			/* $("#cartIdDiv").show();
			if(rewardType == '1'){
				$('#rewardForm').bootstrapValidator('addField','cartId',{
					validators: {
	                	notEmpty: {
	                        message: '身份证号不能为空'
	                    }
	                }
				});
			}else{
				$('#rewardForm').bootstrapValidator('removeField','cartId');
			}
			$('#rewardForm').bootstrapValidator('removeField','carBrand'); */
		}
	}
	
	function loadCity() {
		var proName = $("#province").val();
		$.ajax({
			url : '${basePath}credit/loadCity',
			async : false,
			data : {
				"proName" : proName
			},
			type : "POST",
			success : function(data) {
				$("#city").empty();
				$('#city').append('<option value="">请选择</option>');
				$.each(data, function (i,item) {
					$('#city').append('<option value='+item+'>'+item+'</option>');
			    });
			},
			error : function() {
				alert("获取城市数据失败");
			}
		});
	}
	

$(function () {
    $('#endTime').datetimepicker({
    	minView: "month",//选择日期后，不会再跳转去选择时分秒 
    	format: "yyyy-mm-dd",
    	language: 'zh-CN',
    	autoclose:true
    });
});
$(document).ready(function () {
	$('#rewardForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	rewardAmount: {
                message: '悬赏金额',
                validators: {
                    notEmpty: {
                        message: '悬赏金额不能为空'
                    },
                    numeric : {
                    	message: '只能输入数字'
                    }
                }
            },
            cartId:{
            	validators: {
                    notEmpty: {
                        message: '身份证不能为空!'
                    }
                }
            },
            rewardName: {
                validators: {
                    notEmpty: {
                        message: '姓名不能为空!'
                    }
                }
            },
            province: {
                validators: {
                    notEmpty: {
                        message: '城市不能为空'
                    }
            },
            city: {
                validators: {
                	notEmpty: {
                        message: '省份不能为空'
                    }
                }
            },
            endTime: {
                validators: {
                	notEmpty: {
                        message: '时间不能为空'
                    }
                }
            },
            description:{
            	validators: {
            		stringLength: {
            			min: 0,
            			max: 150,
                        message: '输入文字超过限制'
                    }
                }
            },
            submitHandler: function (validator, form, submitButton) {
                alert("submit");
            }
        }
    }
	});
});
function goBack(){
	window.location.href = "${basePath}reward/list?userId=${userId}";
}
</script>
</body>
</html>
