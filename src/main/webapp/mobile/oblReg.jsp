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
    <script src="${basePath}hplus/js/upload.js"></script>
    <script src="${basePath}hplus/js/obilRegister.js"></script>
    <script src="${basePath}hplus/js/bootstrap-datetimepicker.js"></script>
    <script src="${basePath}hplus/js/bootstrap-datetimepicker.zh-CN.js"></script>

  </head>
  
  <body>
    <div class="main-container">
		<form action="Ident?method=3200" method="POST" class=" form-inline" role="form"">
       
 		<div class="main-container theme-showcase" style="padding-top:20px;">
		<div class="row">
		
			<div class="container-fluid">
        <div class="row-fluid example">
            <div id="sidebar-code" class="col-md-9">
                <div class="well sidebar-nav">
                    
                    <div class="list-group">
					   <a class="list-group-item active">
					      <h4 class="list-group-item-heading">债权人信息</h4>
					   </a>
					   <div class="list-group-item">
					   <table>
						   <tr>
							   	<td>
							   		<div class="form-group">
						             <label>债权类型:</label>
						             <select name="obltype" class="form-control">
									 <option value="1">个人债权</option>
									 <option value="2">企业债权</option>
									 <option value="3">逾期贷款</option>
									 <option value="4">固定资产</option>
									 <option value="5">资产包</option>
									 <option value="6">国际债权</option>
									 </select>
			        				</div>
			        			</td>
		        			</tr>
	        			<tr>
	        				<td>
		        				<div class="input-group" >
							      <span class="input-group-addon">债权金额</span>
							         <span class="input-group-addon">￥</span>
							         <input id="oblmoney" name="oblmoney" type="text" class="form-control">
							         <span class="input-group-addon">.00</span>
						      	</div>
					      </td>
					    </tr>
					    <tr><td><p id="moneyTxt" class="list-group-item-text" style="margin-left: 10px; color: red">
					         	本金加利息  </p></td></tr>
					   </table>
					   
					   </div>
					   
					   <div class="list-group-item">
					   <table>
					   		<tr>
					   			<td>
					   		  <label >您期望的处置方式：<span class="colorF00">*</span> 可多选 </label><br />
				              <input name="ids" id="su1" class="exts1" type="checkbox" value="1"/> 
							  <span>诉讼</span>
					          <div id="su" style="display:none"></div>
					          <label>&nbsp;&nbsp;</label>
					          <input name="ids" id="fsu1" class="exts1" type="checkbox" checked="checked" value="2"/>
							  <span>催收</span>
					          <div id="fsu" style="display:none"></div>
					          <label>&nbsp;&nbsp;</label>
					          <input name="ids"  class="exts1" id="rang1" type="checkbox" value="3"/>
					          <span>债权转让</span> &nbsp;&nbsp;
					          <div id="rang" style="display:none"></div>
					          <input type="hidden" id="idsvalue" name="idsvalue"/>
					   			</td>
					   			
					   		</tr>
					   		<tr><td>
					   				<label>支付的佣金范围:</label>
						             <select name="oblcot" class="form-control">
									 <option value="1">10%</option>
									 <option value="2">10%-20%</option>
									 <option value="3" selected="selected">20%-30%</option>
									 <option value="4">30%-40%</option>
									 <option value="5">40%-50%</option>
									 <option value="6">50%-60%</option>
									 <option value="7">60%以上</option>
									 </select>
					   			</td></tr>
					   </table>
					      
					          
					   </div>
					   <div class="list-group-item">
					   
					   </div>
					   <div class="list-group-item">
					   <h4 class="list-group-item-heading">
					       <label> 联系人信息</label></h4>
					   <table>
					   	<tr>
					   	<td style="width: 30%"><label style="color: #CCCCCC">姓名:</label></td>
					   		<td>
					   		<div class="list-group-item-text">
								
								<input id="weituoname" type="text" name="weituoname" class="form-control" placeholder="可以是本人也可以委托他人"/>
							</div>
					   		</td>
					   		
					   	</tr>
					   	
					   	<tr ><td style="width: 30%"><label style="color: #CCCCCC">联系电话:</label></td><td>
					   		<div class="list-group-item-text">
								
								<input type="text" id="weituophone" name="weituophone" class="form-control" placeholder="请输入联系人的联系电话"/>
								<span id="userspan" style="color: red" hidden="hidden"></span>
							</div>
					   		</td></tr>
					   </table>
					   	
					   </div>
				</div>
				<div class="list-group">
					   <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         债务方信息
					      </h4>
					   </a>
					   <div class="list-group-item">
					   <table>
					   <tr><td><label style="color: #CCCCCC">债务方名称:</label></td></tr>
					   <tr>
					   	<td>
							<input type="text" name="zaiwuoname" class="form-control" placeholder="可以输入个人姓名或者企业名称" style="width: 100%"/>
							<span id="userspan" style="color: red" hidden="hidden"></span></td>
							
					   </tr>
					   <tr><td ><label style="color: #CCCCCC;">债务方地址:</label></td></tr>
					   <tr><td>
				             <select onchange="takeCity()" id="provinceSel1" name="provinceSel" class="form-control input-sm" style="width: 120px;">
							 <option value="1">请选择</option>
							 <c:forEach items="${province}" var="prov">
							 <option>${prov}</option>
							 </c:forEach>
							 </select>
							 </td><td>
							 <select id="citySel" name="citySel" class="form-control input-sm" style="width: 120px;">
							 <option value="1">请选择</option>
							 <c:forEach items="${cities}" var="city">
							 <option>${city}</option>
							 </c:forEach>
							 </select></td></tr>
							 
							 <tr><td><label style="color: #CCCCCC">联系电话:</label></td></tr>
							 
					   <tr>
					   		<td>
							<input type="text" name="zhaiwuphonenum" class="form-control" placeholder="请输入债务人联系电话"/>
							<span id="zhaiwuuserspan" style="color: red" hidden="hidden"></span></td>
					   </tr>
					   </table>	
						</div>
						
						<script type="text/javascript">
							function takeCity() {
								var province = $("#provinceSel1").val();
								//$("#provinceSel1").val(province);
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
					   
						<div class="list-group-item form-group">
						<table>
							<tr>
								<td>
								<label  style="color: #CCCCCC" for="fileToUpload">凭证<small>(借条、欠条、合同、汇款凭证等)</small></label>
						<input class="form-control" type="file" name="fileToUpload" id="fileToUpload" onchange="uploadCheck();"/>
						<div id="progressNumber"></div>
								</td>
								
							</tr><tr><td><label style="color: #CCCCCC; ">债权开始日期:</label>
								<input class="form-control" type="text" name="zqdatepicker" id="datetimepicker"></td></tr>
						</table>
			      		
						</div>
						
						<div class="list-group-item">
							<label style="color: #CCCCCC">债权描述:</label>
				            <textarea id="zqtxtms" name="zqtxtms" class="form-control" rows="3"></textarea>
						</div>
				</div>
				<div class="list-group">
					 <input id="suboblbtn" type="submit" value="提交信息" class="btn btn-success" style="width: 100%; color: #FFFFFF"/>
				</div>
				
              </div><!--/.well -->
            </div><!--/span-->
            
                
                <div>
            	</div><!--/span-->
        		</div><!--/row-->
        
       			</div><!--/.fluid-container-->
		</div>
		</div>
		</form>
 	</div>
 	
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

<jsp:include page="mobile_footer.jsp"></jsp:include>

<script type="text/javascript">
$(document).ready(function () {
	if (${not empty OblRegError}) {
		alert('${OblRegError}');
	}
});

$(function () {
    $('#datetimepicker').datetimepicker({
    	minView: "month",//选择日期后，不会再跳转去选择时分秒 
    	format: "yyyy-mm-dd",
    	language: 'zh-CN',
    	autoclose:true
    });
});

function uploadCheck() {
	if (${user.userid < 0}) {
		alert("请先登录系统，再发布债权信息");
		return false;
	} else {
		fileSelected();
	}
}

function subCheck() {
	var str = "";
	if ($('#su1').is(':checked')) {
		str = "诉讼,";
	}
	if ($('#fsu1').is(':checked')) {
		str = str+"催收,";
	}
	if ($('#rang1').is(':checked')) {
		str = str+"转让,";
	}
	if ("" == str) {
		alert("请至少选择一个处置方式");
		return false;
	}
	$("#idsvalue").val(str);
	if (${user.userid < 0}) {
		alert("请先登录系统，再发布债权信息");
		return false;
	}
	return true;
};
$("#suboblbtn").click(subCheck);
</script>
  </body>
</html>