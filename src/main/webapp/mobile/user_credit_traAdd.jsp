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
    <meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>快易收-专注债权处置</title>
    <Link Rel="icon" href="${basePath}hplus/img/kuaiyishou.ico" type=”image/x-icon”>
	<link href="${basePath}hplus/css/bootstrap.min.css" rel="stylesheet">
	<link href="${basePath}hplus/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<script src="${basePath}hplus/js/jquery.min.js"></script>
    <script src="${basePath}hplus/js/bootstrap.min.js"></script>
    <script src="${basePath}hplus/js/bootstrap-datetimepicker.js"></script>
    <script src="${basePath}hplus/js/bootstrap-datetimepicker.zh-CN.js"></script>
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
</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="mobile_top_logo.jsp"></jsp:include>
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="height:20px">
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
                        <h5>债权转让-发布项目</h5>
                    </div>
                    <div class="ibox-content">
                          <form class="form-horizontal m-t" id="signupForm" action="${basePath }credit/saveCredit" method="post" target="_self"  enctype="multipart/form-data">
                          <input type="hidden"  name="userId" value="${userInfo.id}"/>
                          <input type="hidden"  name="creditType" value="${creditType}">
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					       	  债权人信息
					      </h4>
					      </a><br/>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权类型：</label>
                                <div class="col-sm-8">
                                    <select  name="crType" class="form-control" required="required">
										<option value="8">资产包债权</option>
										<option value="9">单笔债权</option>
									</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权金额：</label>
                                <div class="col-sm-8">
                                    <input id="crAmount" name="crAmount" class="form-control" type="text" required="required" class="valid">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 注意：金额币种人民币(￥)</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">支付佣金范围：</label>
                                <div class="col-sm-8">
                                     <select name="commisionRange" class="form-control" required="required">
										 <option value="1%-3%">1%-3%</option>
										 <option value="3%-5%">3%-5%</option>
										 <option value="5%-8%" selected="selected">5%-8%</option>
										 <option value="8%-10%">8%-10%"</option>
									 </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系人姓名：</label>
                                <div class="col-sm-8">
                                    <input id="contactName" name="contactName" class="form-control" type="text" placeholder="可以是本人也可以委托他人" required="required">
                                    <!-- <span class="help-block m-b-none"><i class="fa fa-info-circle"></i>可以是本人也可以委托他人</span> -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系人电话：</label>
                                <div class="col-sm-8">
                                    <input id="contactNumber" name="contactNumber" class="form-control" type="text" placeholder="请输入联系人的联系电话" required="required">
                                </div>
                            </div>
                           <div class="hr-line-dashed"></div>
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					      	   债务方信息
					      </h4>
					      </a><br/>
					       <div class="form-group">
                                <label class="col-sm-3 control-label">债务方性质：</label>
                                <div class="col-sm-8">
                                    <select id="debtType" name="debtType" class="form-control input-sm"  required="required">
							              <option value="">请选择</option>
							              <option value="1">个人</option>
							              <option value="2">企业</option>
							          </select>
                                </div>
                            </div>
                         <div class="form-group">
                                <label class="col-sm-3 control-label">债务方名称：</label>
                                <div class="col-sm-8">
                                    <input id="debtName" name="debtName" class="form-control" type="text" required="required">
                                    <!-- <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 这里写点提示的内容</span> -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务方地址：</label>
                                <div class="col-sm-4">
									   <select onchange="loadCity(this)" id="debtProvince" name="debtProvince" class="form-control"  required="required">
										 <option value="1">请选择省份</option>
										 <c:forEach items="${provinceList}" var="item">
										 <option value="${item}">${item}</option>
										 </c:forEach>
				                       </select>
								</div>
								<div class="col-sm-4">
									 <select id="debtCity" name="debtCity" class="form-control" >
							              <option value="">请选择城市</option>
							          </select>
								</div>
                            </div>
                                
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务方联系电话：</label>
                                <div class="col-sm-8">
                                    <input id="debtPhone" name="debtPhone" class="form-control" type="text" required="required" class="error">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务凭证：</label>
                                <div class="col-sm-8">
                                     <input class="form-control" type="file" name="uploadFiles" accept=".jpg,.png,.jpeg,.gif,.bmp"/>
                                     <div id="addFileUpload"></div>
                                     <span class="help-block m-b-none">
                                     	<button type="button" class="btn btn-white btn-xs" onclick="addFileUpload()"><span class="glyphicon glyphicon-plus-sign">继续添加</span></button>
                                     </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权开始日期：</label>
                                <div class="col-sm-4">
                                     <select id="openDate" name="openDate" class="form-control input-sm"  required="required">
							              <option value="">请选择</option>
							              <option value="2009">2009</option>
							              <option value="2010">2010</option>
							              <option value="2011">2011</option>
							              <option value="2012">2012</option>
							              <option value="2013">2013</option>
							              <option value="2014">2014</option>
							              <option value="2015">2015</option>
							              <option value="2016" selected="selected">2016</option>
							              <option value="2017">2017</option>
							              <option value="2018">2018</option>
							              <option value="2019">2019</option>
							              <option value="2020">2020</option>
							          </select>
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
    
	<script type="text/javascript">
	function addFileUpload(){
		$("#addFileUpload").append('<input class="form-control" type="file" name="uploadFiles" accept=".jpg,.png,.jpeg,.gif,.bmp"/>');
	}
	function goBack(){
		window.location.href = "${basePath}credit/list?userId=${userInfo.id}&creditType=2";
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
</script>
</body>

</html>