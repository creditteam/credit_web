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
                        <h5>债权转让-发布项目</h5>
                    </div>
                    <div class="ibox-content">
                   
                           <form class="form-horizontal m-t" id="signupForm">
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         债权人信息
					      </h4>
					      </a><br/>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权类型：</label>
                                <div class="col-sm-8">
                                        <select  name="shenfen" class="form-control">
													<option value="0">个人债权</option>
													<option value="1">企业债权</option>
													<option value="2">预期贷款</option>
													<option value="3">固定资产</option>
													<option value="4">国际债权</option>
										</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权金额：</label>
                                <div class="col-sm-8">
                                    <input id="lastname" name="lastname" class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 注意：金额币种人民币(￥)</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">你期望的处置方式：</label>
                                <div class="col-sm-8">
	                              <input name="ids" id="su1" class="exts1" type="checkbox" value="1"> 
								  <span>诉讼</span>
						          <input name="ids" id="fsu1" class="exts1" type="checkbox" checked="checked" value="2">
								  <span>催收</span>
						          <input name="ids" class="exts1" id="rang1" type="checkbox" value="3">
						          <span>债权转让</span> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">支付佣金范围：</label>
                                <div class="col-sm-8">
                                     <select name="oblcot" class="form-control">
									 <option value="1">10%</option>
									 <option value="2">10%-20%</option>
									 <option value="3" selected="selected">20%-30%</option>
									 <option value="4">30%-40%</option>
									 <option value="5">40%-50%</option>
									 <option value="6">50%-60%</option>
									 <option value="7">60%以上</option>
									 </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系人姓名：</label>
                                <div class="col-sm-8">
                                    <input id="confirm_password" name="confirm_password" class="form-control" type="text" placeholder="可以是本人也可以委托他人">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i>可以是本人也可以委托他人</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系人电话：</label>
                                <div class="col-sm-8">
                                    <input id="email" name="email" class="form-control" type="text" placeholder="请输入联系人的联系电话">
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
                                    <input id="firstname" name="firstname" class="form-control" type="text">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 这里写点提示的内容</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务方地址：</label>
                                <div class="col-sm-4">
												<select onchange="takeCity()" id="provinceSel1"
													name="provinceSel" class="form-control input-sm">
													<option value="1">请选择</option>
													<option>北京市</option>
													<option>上海市</option>
													<option>天津市</option>
													<option>重庆市</option>
													<option>香港</option>
													<option>澳门</option>
													<option>河北省</option>
													<option>浙江省</option>
													<option>辽宁省</option>
													<option>湖北省</option>
													<option>江苏省</option>
													<option>内蒙古</option>
													<option>江西省</option>
													<option>山西省</option>
													<option>甘肃省</option>
													<option>山东省</option>
													<option>黑龙江</option>
													<option>福建省</option>
													<option>广东省</option>
													<option>四川省</option>
													<option>湖南省</option>
													<option>河南省</option>
													<option>云南省</option>
													<option>安徽省</option>
													<option>宁夏</option>
													<option>吉林省</option>
													<option>广西省</option>
													<option>贵州省</option>
													<option>陕西省</option>
													<option>青海省</option>
													<option>海南省</option>
													<option>西藏</option>
												</select>
								</div>
								<div class="col-sm-4">
										<select id="citySel" name="citySel" class="form-control input-sm">
											<option value="1">请选择</option>
										</select>
								</div>
                            </div>
                                
                                
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务方联系电话：</label>
                                <div class="col-sm-8">
                                    <input id="username" name="username" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务凭证：</label>
                                <div class="col-sm-8">
                                     <input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权开始日期：</label>
                                <div class="col-sm-8">
                                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请再次输入您的密码</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债权描述：</label>
                                <div class="col-sm-8">
                                    <textarea id="zqtxtms" name="zqtxtms" class="form-control" rows="3"></textarea>
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
</body>

</html>