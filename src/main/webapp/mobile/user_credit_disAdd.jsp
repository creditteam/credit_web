<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="${basePath}">
    
    <title>快易收债权管理|债权注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<Link Rel="icon" href="${basePath}hplus/img/kuaiyishou.ico" type=”image/x-icon”>
	<link href="${basePath}hplus/css/bootstrap.min.css" rel="stylesheet">
	<link href="${basePath}hplus/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<script src="${basePath}hplus/js/jquery.min.js"></script>
    <script src="${basePath}hplus/js/bootstrap.min.js"></script>
    <script src="${basePath}hplus/js/bootstrap-datetimepicker.js"></script>
    <script src="${basePath}hplus/js/bootstrap-datetimepicker.zh-CN.js"></script>

  </head>
  
 <body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="mobile_top_logo.jsp"></jsp:include>
            <nav class="navbar navbar-default navbar-static-top" role="navigation">
			   <div class="navbar-header">
			      <a class="navbar-brand" href="javascript:goBack()">&lt;返回</a>
			   </div>
			</nav>
            <div class="wrapper wrapper-content">
            <div class="container">
            <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                   <div class="ibox-title">
                        <h5>债权处置-发布项目</h5>
                    </div>
                    <div class="ibox-content">
                          <form class="form-horizontal m-t" id="signupForm" action="${basePath }credit/saveCredit" method="post" target="_self"  enctype="multipart/form-data">
                          <input type="hidden"  name="userId" value="${userInfo.id}"/>
                          <input type="hidden"  name="creditType" value="${creditType }">
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         	债权人信息
					      </h4>
					      </a><br/>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权类型：</label>
                                <div class="col-sm-8">
                                    <select  name="crType" class="form-control">
										<option value="1">个人债权</option>
										<option value="2">企业债权</option>
										<option value="3">预期贷款</option>
										<option value="4">固定资产</option>
										<option value="5">国际债权</option>
									</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权金额：</label>
                                <div class="col-sm-8">
                                    <input id="crAmount" name="crAmount" class="form-control" type="text" required="required" aria-required="true" class="valid">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 注意：金额币种人民币(￥)</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">你期望的处置方式：</label>
                                <div class="col-sm-8">
	                              <input name="disposalType" id="su1" class="exts1" type="checkbox" value="1"> 
								  <span>诉讼</span>
						          <input name="disposalType" id="fsu1" class="exts1" type="checkbox" checked="checked" value="2">
								  <span>催收</span>
						          <input name="disposalType" class="exts1" id="rang1" type="checkbox" value="3">
						          <span>债权转让</span> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">支付佣金范围：</label>
                                <div class="col-sm-8">
                                     <select name="commisionRange" class="form-control" required="required" aria-required="true">
									 <option value="10%">10%</option>
									 <option value="10%-20%">10%-20%</option>
									 <option value="20%-30%" selected="selected">20%-30%</option>
									 <option value="30%-40%">30%-40%</option>
									 <option value="40%-50%">40%-50%</option>
									 <option value="50%-60%">50%-60%</option>
									 <option value="60%以上">60%以上</option>
									 </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系人姓名：</label>
                                <div class="col-sm-8">
                                    <input id="contactName" name="contactName" class="form-control" type="text" placeholder="可以是本人也可以委托他人" required="required" aria-required="true">
                                    <!-- <span class="help-block m-b-none"><i class="fa fa-info-circle"></i>可以是本人也可以委托他人</span> -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系人电话：</label>
                                <div class="col-sm-8">
                                    <input id="contactNumber" name="contactNumber" class="form-control" type="text" placeholder="请输入联系人的联系电话" required="required" aria-required="true">
                                </div>
                            </div>
                          <div class="hr-line-dashed"></div>
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         	债务方信息
					      </h4>
					      </a><br/>
                         <div class="form-group">
                                <label class="col-sm-3 control-label">债务方名称：</label>
                                <div class="col-sm-8">
                                    <input id="debtName" name="debtName" class="form-control" type="text" required="required" aria-required="true">
                                  <!-- <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 这里写点提示的内容</span> -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务方地址：</label>
                                <div class="col-sm-4">
								   <select onchange="loadCity()" id="debtProvince" name="debtProvince" class="form-control"  required="required" aria-required="true">
									 <option value="1">请选择省份</option>
									 <c:forEach items="${provinceList}" var="item">
									 <option value="${item}">${item}</option>
									 </c:forEach>
			                       </select>
								</div>
								<div class="col-sm-4">
									 <select id="debtCity" name="debtCity" class="form-control">
							              <option value="">请选择城市</option>
							          </select>
								</div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务方联系电话：</label>
                                <div class="col-sm-8">
                                    <input id="debtPhone" name="debtPhone" class="form-control" type="text" required="required" aria-required="true">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务凭证：</label>
                                <div class="col-sm-8">
                                     <input class="form-control" type="file" name="uploadFile" id="uploadFile" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权开始日期：</label>
                                <div class="col-sm-8">
                                    <input class="form-control" type="text" name="openDate" id="datetimepicker" required="required" aria-required="true">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权描述：</label>
                                <div class="col-sm-8">
                                    <textarea id="description" name="description" class="form-control" rows="3"></textarea>
                                </div>
                            </div>
                       
                            <div class="form-group">
	                            <table width="99%">
	                            	<tr>
	                            		<td><div class="col-sm-6 col-sm-offset-3">
	                                    <button class="btn btn-sm btn-success btn-block" type="button" onclick="goBack()">返回</button>
	                                </div></td>
	                            		<td><div class="col-sm-6 col-sm-offset-3">
	                                    <button class="btn btn-sm btn-success btn-block" type="submit">提交</button>
	                                </div></td>
	                            	</tr>
	                            </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
       </div>
   </div>
		<!-- 底部文件 -->
		<jsp:include page="mobile_footer.jsp"></jsp:include>
  </div>
</div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    
<div class="subfooter" style="background-color: #0b6070; margin-top: 50px">
	<div class="main-container">
		<div class="row">
			<div class="col-md-12" style="color: #fff">
				<p class="text-left">
					Copyright © 2016 易收（深圳）网络科技有限公司  版权所有 
					</p>
				<p>备案号：<a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">粤ICP备16039401号-1</a></p>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
function goBack(){
	window.location.href = "${basePath}credit/list?userId=${userInfo.id}&creditType=1";
}
function loadCity() {
	
	var proName = $("#debtProvince").val();
	$.ajax({
		url : '${basePath}credit/loadCity',
		async : false,
		data : {
			"proName" : proName
		},
		type : "POST",
		success : function(data) {
			
			$("#debtCity").empty();
			$('#debtCity').append('<option>请选择城市</option>');
			$.each(data, function (i,item) {
				$('#debtCity').append('<option value='+item+'>'+item+'</option>');
		    });
		},
		error : function() {
			alert("获取城市数据失败");
		}
	});
}

$(function () {
    $('#datetimepicker').datetimepicker({
    	minView: "month",//选择日期后，不会再跳转去选择时分秒 
    	format: "yyyy-mm-dd",
    	language: 'zh-CN',
    	autoclose:true
    });
});

</script>
  </body>
</html>
