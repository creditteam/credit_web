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
<script src="${basePath}hplus/js/upload.js"></script>
<script src="${basePath}hplus/js/bootstrap-datetimepicker.js"></script>
<script src="${basePath}hplus/js/bootstrap-datetimepicker.zh-CN.js"></script>

</head>

<body>
	<div class="main-container">
		<div class="row text-center" style="background-color: #FF291A">
			<span style="color: #fff; width: 100%">悬赏信息描述越详细，悬赏成功的可能性越高</span>
		</div>
		<div style="height:5px;"></div>
		<div class="form">
			<form action="XuanShang?method=3583" id="xsform" method="POST" role="form" class="form-horizontal">
				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">悬赏类型:</label>
						<div class="col-sm-10">
							<select name="obltype" class="form-control">
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
						<label class="col-sm-2 control-label">悬赏金额:</label>
						<div class="col-sm-10">
							<input id="oblmoney" name="oblmoney" type="text" class="form-control">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">姓名：</label>
						<div class="col-sm-10">
							<input name="xmname" id="su1" type="text" class="form-control" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">身份证:</label>
						<div class="col-sm-10">
							<input name="shenf" id="su2" type="text" class="form-control" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">所在城市:</label>
						<div class="col-sm-10">
							<select id="provinceSel2" onchange="takeCity()" name="provinceSel" class="form-control input-sm">
								<option value="1">请选择</option>
								<c:forEach items="${province}" var="prov">
									<option>${prov}</option>
								</c:forEach>
							</select>
							<select id="citySel" name="citySel" class="form-control input-sm">
								<option value="1">请选择</option>
								<c:forEach items="${cities}" var="city">
									<option>${city}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
				<script type="text/javascript">
				function takeCity() {
					var province = $("#provinceSel2").val();
					$("#provinceSel2").val(province);
					$.ajax({
						url : 'ObligMsg?method=3100',
						async : false,
						data : {
							"province" : province
						},
						type : "POST",
						success : function(data) {
							var a=JSON.parse(data);
							$("#citySel").empty();
							$('#citySel').append('<option>请选择</option>');
							for (var int = 0; int < a.length; int++) {
								$('#citySel').append('<option>'+a[int]+'</option>');
							}
							
						},
						error : function() {
							alert("获取城市数据失败");
						}
					});
				}
			</script>
				<div class="form-group">
					<div class="col-xs-12">
						<h5 for="fileToUpload" class="col-sm-2 control-label">
							<b>照片</b><small>(身份证、个人近照等)</small>
							</h6>
							<div class="col-sm-10">
								<input class="form-control" type="file" name="fileToUpload" id="fileToUpload" onchange="uploadCheck();" />
							</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">悬赏有效期:</label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="zqdatepicker" id="datetimepicker">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-xs-12">
						<label class="col-sm-2 control-label">描述:</label>
						<div class="col-sm-10">
							<textarea id="zqtxtms" name="zqtxtms" class="form-control"
								rows="3" style="margin: 0px 0px 30px 0px !important;"></textarea>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<button type="submit" class="btn btn-lg btn-success btn-block" onclick="checkUsersx()">提交信息</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div style="height: 50px;"></div>
	<jsp:include page="mobile_footer.jsp"></jsp:include>

	<script type="text/javascript">
function uploadCheck() {
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
}

$(function () {
    $('#datetimepicker').datetimepicker({
    	minView: "month",//选择日期后，不会再跳转去选择时分秒 
    	format: "yyyy-mm-dd",
    	language: 'zh-CN',
    	autoclose:true
    });
});
$(document).ready(function () {
	if (${not empty xuansRegError}) {
		alert('${xuansRegError}');
	}
});
</script>
</body>
</html>
