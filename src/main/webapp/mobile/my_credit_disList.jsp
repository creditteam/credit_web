<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收债权管理|债权信息</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  </head>
	<jsp:include page="mobile_meta.jsp"></jsp:include>
<body>

<div class="main-container" style="height:100%">
	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
	<nav class="navbar navbar-default" role="navigation">
	   <div class="navbar-header">
	      <a class="navbar-brand" href="javascript:goBack()">&lt;返回</a>
	   </div>
	</nav>
	<div class="row">
		<div class="col-md-12" >
			<table width="99%">
				<tr>
					<td align="left"><h4>&nbsp;&nbsp;我处置的债权</h4></td>
				</tr>
			</table>
			<table class="table table-striped" style=" text-align:center; ">
			   <thead>
			      <tr>
			         <th style="text-align:center;">所在地</th>
			         <th style="text-align:center;">债务人</th>
			         <th style="text-align:center;">金额(万元)</th>
			         <th style="text-align:center;">佣金</th>
			         <th style="text-align:center;"></th>
			      </tr>
			   </thead>
			   <tbody id="obltb_body">
			   
				   <c:forEach items="${pd.data }" var="credit">
						<tr>
							<td><span class="label label-warning">${credit.debtProvince}</span></td>
							<td><a href = "${basePath}credit/myCreditDetails?id=${credit.id}">${credit.debtName }</a></td>
							<td><i class="fa fa-clock-o"></i> ${credit.crAmount}</td>
							<td class="text-navy"><i class="fa fa-level-up"></i>${credit.commisionRange}</td>
							<td>
								<div class="dropdown">
								   <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" 
								      data-toggle="dropdown">
								      	操作
								      <span class="caret"></span>
								   </button>
								   <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu1">
								      <c:if test="${credit.crStatus==2 }">
										<li role="presentation">
											<a href="${basePath}agreement/lookAgree?userId=${credit.dealTeamName}&creditId=${credit.id}&agreeType=1" target="_self">[居间协议(前期)]</a>
								        </li>
									  </c:if>
									  <c:if test="${credit.crStatus==3 }">
									  	<li role="presentation" class="divider"></li>
									  	<li role="presentation">
											<a href="${basePath }credit/signedAgree?id=${credit.id}" target="_self">[上传处置协议]</a>
										</li>
									  </c:if>
									  <c:if test="${credit.crStatus==4 }">
									  	<li role="presentation" class="divider"></li>
									  	<li role="presentation">
										    <a href="${basePath}agreement/lookAgree?userId=${credit.dealTeamName}&creditId=${credit.id}&agreeType=3" target="_self">[居间协议(后期)]</a>
											<a href="${basePath }credit/signedAgree?id=${credit.id}" target="_self">[上传协议]</a>
										</li>
									  </c:if>
									  <c:if test="${credit.crStatus eq 5 or credit.crStatus eq 6 or credit.crStatus eq 7 }">
									  	<li role="presentation" class="divider"></li>
								  		<li role="presentation">
											<a href="javascript:void(0)" onclick="showSelectModal('${credit.crStatus}','${credit.id}')">[更新进度]</a>
										</li>
									  </c:if>
								   </ul>
								   
								</div>
							</td>
						</tr>
					</c:forEach>
			   
			   </tbody>
			</table>
		</div>
		<gvtv:newPage href="${basePath }credit/list?creditType=1&userId=${userInfo.id}" pageType="mobile"></gvtv:newPage>
		<div class="hr-line-dashed" style="padding-bottom: 40px;"></div>
	</div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">更新进度</h4>
				</div>
				<div class="modal-body" style="font-size: 16px">
					<input name="creditId" id="creditId" type="hidden"/>
					<label class="checkbox-inline">
						<input type="radio" name="crStatus" value="6" id="crStatus6"/>处置中
					</label>
					<label class="checkbox-inline">
						<input type="radio" name="crStatus" value="7" id="crStatus7"/>还款中
					</label>
					<label class="checkbox-inline">
						<input type="radio" name="crStatus" value="9" id="crStatus9"/>已终结
					</label>
					<span id="statusSub"></span>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" onclick="updateSpeed()">确定</button>
				</div>
			</div>
		</div>
	</div>
	
<jsp:include page="mobile_footer.jsp"></jsp:include>
<style type="text/css">
	.navbar-nav>li>a {
		padding-top: 10px;
		padding-bottom: 10px;
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
		function goBack(){
			window.location.href = "${basePath }user/tologin";
		}
		function showSelectModal(value,id){
        	if(value == '6'){
        		$("#crStatus6").attr("disabled","disabled");
        	}else if(value == '7'){
        		$("#crStatus6").attr("disabled","disabled");
        		$("#crStatus7").attr("disabled","disabled");
        	}
        	$("#creditId").val(id);
        	$("#myModal2").modal("show");
        }
        function updateSpeed(){
        	var crStatus = $("[name='crStatus']:checked").val();
        	if(!crStatus || crStatus == ''){
        		$("#statusSub").html("<font color='red'>请先勾选状态</font>");
	        	return false;
        	}
        	$.ajax({
        		url : '${basePath}credit/updStatus',
        		async : false,
        		data : {
        			creditId : $("#creditId").val(),
        			crStatus : $("[name='crStatus']:checked").val()
        		},
        		type : "POST",
        		success : function(data) {
        			$("#myModal2").modal("hide");
        		},
        		error : function() {
        			alert("获取数据失败");
        		}
        	});
        }
	</script>
</body>
</html>
