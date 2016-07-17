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

<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
<meta name="author" content="htmlcoder.me">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

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
		<div class="row text-center" style="background-color: #FF291A">
			<span style="color: #fff; width: 100%">悬赏信息描述越详细，悬赏成功的可能性越高</span>
		</div>
		<div style="height:5px;"></div>
		<div class="form">
			<form action="${basePath}reward/saveReward" id="rewardForm" method="post" role="form" class="form-inline" enctype="multipart/form-data">
				<input type="hidden" name="userId" value="${userId}"/>
				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">悬赏类型:</label>
						<div class="col-sm-10">
							<select name="rewardType" id="rewardType" class="form-control" onchange="checkSelectType()">
								<option value="1">找人</option>
								<option value="2">找车辆</option>
								<option value="3">找房产</option>
								<option value="4">找应收账款</option>
								<option value="5">其它</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">悬赏金额(万元):</label>
						<div class="col-sm-10">
							<input id="rewardAmount" name="rewardAmount" type="text" class="form-control">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">姓名：</label>
						<div class="col-sm-10">
							<input name="rewardName" id="rewardName" type="text" class="form-control" />
						</div>
					</div>
				</div>
				<div class="form-group" id="cartIdDiv">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">身份证:</label>
						<div class="col-sm-10">
							<input name="cartId" id="cartId" type="text" class="form-control" maxlength="20"/>
						</div>
					</div>
				</div>
				<div class="form-group" id="carBrandDiv" style="display: none">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">车牌号:</label>
						<div class="col-sm-10">
							<input name="carBrand" id="carBrand" type="text" class="form-control"  maxlength="15"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">所在城市:</label>
						<div class="col-sm-4">
							<select id="province" onchange="loadCity(this)" name="province" class="form-control">
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
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<h5 for="fileToUpload" class="col-sm-2 control-label">
							<b>照片</b><small>(身份证、个人近照等)</small>
							</h6>
							<div class="col-sm-10">
								<input class="form-control" type="file" name="uploadFile" id="uploadFile" />
							</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">悬赏有效期:</label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="endTime" id="endTime" readonly="readonly">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">描述:</label>
						<div class="col-sm-10">
							<textarea id="description" name="description" class="form-control"
								rows="3" style="margin: 0px 0px 30px 0px !important;"></textarea>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<button type="submit" class="btn btn-lg btn-success btn-block">提交信息</button>
					</div>
				</div>
			</form>
		</div>
	<div style="padding-bottom: 40px">&nbsp;</div><br/>
	</div>
	<jsp:include page="mobile_footer.jsp"></jsp:include>

	<script type="text/javascript">
	
	function checkSelectType(obj){
		var rewardType = $("#rewardType").val();
		if(rewardType == '2'){
			$("#carBrandDiv").show();
			$("#cartIdDiv").hide();
			$('#rewardForm').bootstrapValidator('addField','carBrand',{
				validators: {
                	notEmpty: {
                        message: '车牌号不能为空'
                    }
                }
			});
			$('#rewardForm').bootstrapValidator('removeField','cartId');
		}else{
			$("#cartIdDiv").show();
			$("#carBrandDiv").hide();
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
			$('#rewardForm').bootstrapValidator('removeField','carBrand');
		}
	}
	
	function loadCity(obj) {
		var proName = $(obj).val();
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
	
	
/* function uploadCheck() {
	if (${user.userid < 0}) {
		alert("请先登录系统，再发布悬赏信息");
		return false;
	} else {
		fileSelected();
	}
}

function checkUsersx() {
	if (${user.userid < 0}) {
		alert("请先登录系统，再发布悬赏信息");
		return false;
	} 
} */

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
            			max: 8,
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
</script>
</body>
</html>
