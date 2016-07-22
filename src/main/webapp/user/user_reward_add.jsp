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
            <jsp:include page="/user/user_left.jsp"></jsp:include>
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                   <div class="ibox-title">
                        <h5>线索悬赏-发布悬赏</h5>
                    </div>
                    <div class="ibox-content">
                   
                       <form class="form-horizontal m-t" id="signupForm" action="${basePath }reward/saveReward" method="post" target="_self" enctype="multipart/form-data">
                       <input type="hidden" name="userId" value="${userInfo.id }"> 
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         基本信息
					      </h4>
					      </a><br/>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">悬赏类型：</label>
                                <div class="col-sm-8">
                                        <select  name="rewardType" class="form-control" required="required" aria-required="true">
													<option value="0">找人</option>
													<option value="1">找车辆</option>
													<option value="2">找房产</option>
													<option value="3">找应收款</option>
													<option value="4">其他</option>
										</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">悬赏金额：</label>
                                <div class="col-sm-8">
                                    <input id="rewardAmount" name="rewardAmount" class="form-control" type="text" required="required" aria-required="true" class="valid">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 注意：金额币种人民币(￥)</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">姓名：</label>
                                <div class="col-sm-8">
                                           <input id="rewardName" name="rewardName" class="form-control" type="text" required="required" aria-required="true" class="valid">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">身份证：</label>
                                <div class="col-sm-8">
                                      <input id="cartId" name="cartId" class="form-control" type="text" required="required" aria-required="true" class="valid">
                                </div>
                            </div>
                           <div class="hr-line-dashed"></div>
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         其他信息
					      </h4>
					      </a><br/>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">所在地：</label>
                                <div class="col-sm-4">
											<select onchange="loadCity(this)" id="debtProvince" name="province" class="form-control input-sm"  required="required" aria-required="true">
													 <option value="1">请选择</option>
													 <c:forEach items="${provinceList}" var="item">
													 <option value="${item}">${item}</option>
													 </c:forEach>
							                 </select>
								</div>
								<div class="col-sm-4">
										<select id="debtCity" name="city" class="form-control input-sm">
							              <option value="">请选择</option>
							          </select>
								</div>
                            </div>
                                
                            <div class="form-group">
                                <label class="col-sm-3 control-label">照片：</label>
                                <div class="col-sm-8">
                                     <input class="form-control" type="file" name="uploadFile" id="uploadFile" onchange="uploadCheck();"/>
                                </div>
                            </div>
                            <div class="form-group" id="data_1">
	                            <label class="col-sm-3 control-label">悬赏日期：</label>
	                           <div class="col-sm-8">
	                                <input class="form-control" type="text" name="createTime" id="datetimepicker" required="required" aria-required="true">
	                            </div>
                           </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">悬赏描述：</label>
                                <div class="col-sm-8">
                                    <textarea id="description" name="description" class="form-control" rows="3"></textarea>
                                </div>
                            </div>
                       
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                    <button class="btn btn-primary btn-white" type="button">取消</button>
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
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    
<script type="text/javascript">
	function loadCity(obj) {
		var proName = $(obj).val();
		//$("#provinceSel1").val(province);
		$.ajax({
			url : '${basePath}credit/loadCity',
			async : false,
			data : {
				"proName" : proName
			},
			type : "POST",
			success : function(data) {
				
				$("#debtCity").empty();
				$('#debtCity').append('<option>请选择</option>');
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