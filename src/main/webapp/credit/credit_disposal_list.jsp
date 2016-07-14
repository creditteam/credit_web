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
<title>快易收-欢迎您登陆快易收债权管理系统</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<jsp:include page="/common/_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="/common/_menu.jsp"></jsp:include>
			<!-- 用户登录begin -->
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>债权信息列表</h5>
								<div class="ibox-tools">
									<a class="dropdown-toggle" data-toggle="dropdown"
										href="table_basic.html#"> <i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="javascript:loadTable(0);">选项1</a></li>
										<li><a href="table_basic.html#">选项2</a></li>
									</ul>
									
								</div>
							</div>
							<div class="ibox-content">
							<input name="pageNum" id="pageNum" type="hidden" value="0"/>
							<input name="recordsTotal" id="recordsTotal" type="hidden"/>
								<table class="table table-hover" id="finishingTask" >
									<thead>
										<tr>
											<th>债权类型</th>
											<th>所在地</th>
											<th>债务人</th>
											<th>金额(万元)</th>
											<th>佣金范围</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody id="creditDisposal">
										<tr>
											<td><span class="label label-warning">企业债权</span></td>
											<td>湛江市</td>
											<td>湛*市雄立房产有限公司</td>
											<td>160.00金额(万元)</td>
											<td class="text-navy"><i class="fa fa-level-up"></i>20%-40%</td>
											<td><span class="label label-warning">处置中</span></td>
											<td><a href="${basePath }credit/credit_disposal_detail.jsp">查看</a></td>
										</tr>
										<tr>
											<td><span class="label label-warning">个人债权</span></td>
											<td>湛江市</td>
											<td>张三</td>
											<td>15.00金额(万元)</td>
											<td class="text-navy"><i class="fa fa-level-up"></i>10%-15%</td>
											<td><span class="label label-warning">招标中</span></td>
											<td><a href="${basePath }credit/credit_disposal_detail.jsp">查看</a></td>
										</tr>
										<tr>
											<td><span class="label label-warning">企业债权</span></td>
											<td>湛江市</td>
											<td>湛*市雄立房产有限公司</td>
											<td>161.00金额(万元)</td>
											<td class="text-navy"><i class="fa fa-level-up"></i>21%-40%</td>
											<td><span class="label label-warning">招标中</span></td>
											<td><a href="${basePath }credit/credit_disposal_detail.jsp">查看</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					 <!-- page begin 
					   <div class="hr-line-dashed"></div>
                        <div class="text-center">
                            <div class="btn-group">
                                <button class="btn btn-white" onclick="loadTable('for')" type="button">上一页</i>
                                </button>
                                <button class="btn btn-white" onclick="loadTable(0)">1</button>
                                <button class="btn btn-white" onclick="loadTable(1)">2</button>
                                <button class="btn btn-white" onclick="loadTable(2)">3</button>
                                <button class="btn btn-white" onclick="loadTable(3)">4</button>
                                <button class="btn btn-white" onclick="loadTable(4)">5</button>
                                <button class="btn btn-white" onclick="loadTable(5)">6</button>
                                <button class="btn btn-white" type="button" onclick="loadTable('next')">下一页</i>
                                </button>
                            </div>
                        </div>-->
					 <!-- page end -->
					 <div id="example"></div>
				</div>
			</div>
		   </div>
		<!-- 用户登录end -->
	</div>
	<!-- 底部文件 -->
	<jsp:include page="/common/_footer.jsp"></jsp:include>
	<jsp:include page="/common/_script.jsp"></jsp:include>
	<script src="${basePath }hplus/js/bootstrap-paginator.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$.ajax({
			url: "${basePath}credit/findCreditList",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    async: true, //请求是否异步
		    data: { "from": 0*10},//参数值
		    type: "post", 
		    success: function(page) {
		    	$("#creditDisposal").empty();
		    	$.each(page.data,function(n,value){
		    		$("#creditDisposal").append('<tr>'+
							'<td><span class="label label-warning">'+value.crType+'</span></td>'+
							'<td>'+value.debtProvince+'</td>'+
							'<td>'+value.debtProof+'</td>'+
							'<td>'+value.crAmount+'</td>'+
							'<td class="text-navy"><i class="fa fa-level-up"></i>'+value.commisionRange+'</td>'+
							'<td><span class="label label-warning">'+value.crStatus+'</span></td>'+
							'<td><a href="${basePath }credit/credit_disposal_detail.jsp">查看</a></td>'+
						'</tr>');
		    	});
		    	//$("#recordsTotal").val(page.recordsTotal);
		    var options = {
		            currentPage: 0,//当前页
		            totalPages: 3,//总页数
		            numberofPages: 5,//显示的页数
		            itemTexts: function(type, page, current) { //修改显示文字
		                switch (type) {
		                case "first":
		                    return "首页";
		                case "prev":
		                    return "上一页";
		                case "next":
		                    return "下一页";
		                case "last":
		                    return "最后一页";
		                case "page":
		                    return page;
		                }
		            },//点击事件，用于通过Ajax来刷新整个list列表
		            onPageClicked: function (event, originalEvent, type, page){
		            	$.ajax({
		        			url: "${basePath}credit/findCreditList",    //请求的url地址
		        		    dataType: "json",   //返回格式为json
		        		    async: true, //请求是否异步
		        		    data: { "from": page*10},//参数值
		        		    type: "post", 
		        		    success: function(page) {
		        		    	$("#creditDisposal").empty();
		        		    	$.each(page.data,function(n,value){
		        		    		$("#creditDisposal").append('<tr>'+
		        							'<td><span class="label label-warning">'+value.crType+'</span></td>'+
		        							'<td>'+value.debtProvince+'</td>'+
		        							'<td>'+value.debtProof+'</td>'+
		        							'<td>'+value.crAmount+'</td>'+
		        							'<td class="text-navy"><i class="fa fa-level-up"></i>'+value.commisionRange+'</td>'+
		        							'<td><span class="label label-warning">'+value.crStatus+'</span></td>'+
		        							'<td><a href="${basePath }credit/credit_disposal_detail.jsp">查看</a></td>'+
		        						'</tr>');
		        		    	});
		        		    	$("#recordsTotal").val(page.recordsTotal);
		        		    }
		        		});
		            }
		        }
		    $('#example').bootstrapPaginator(options);
		    }
		});
		
	});
	function loadTable(pageNum){
		
		var recordsTotal = $("#recordsTotal").val();
		var pageNumOld = parseInt($("#pageNum").val());
		
		if(pageNum == 'for' && pageNumOld > 0){//上一页
			pageNum = pageNumOld - 1;
		}else if(pageNum == 'next' && (pageNumOld+1)*10 <= recordsTotal){//下一页
			pageNum = pageNumOld + 1;
		}
		if(isNaN(pageNum) || (recordsTotal != '' && pageNum*10 >= recordsTotal)){
			return;
		}
		
		$.ajax({
			url: "${basePath}credit/findCreditList",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    async: true, //请求是否异步
		    data: { "from": pageNum*10},//参数值
		    type: "post", 
		    success: function(page) {
		    	$("#creditDisposal").empty();
		    	$.each(page.data,function(n,value){
		    		$("#creditDisposal").append('<tr>'+
							'<td><span class="label label-warning">'+value.crType+'</span></td>'+
							'<td>'+value.debtProvince+'</td>'+
							'<td>'+value.debtProof+'</td>'+
							'<td>'+value.crAmount+'</td>'+
							'<td class="text-navy"><i class="fa fa-level-up"></i>'+value.commisionRange+'</td>'+
							'<td><span class="label label-warning">'+value.crStatus+'</span></td>'+
							'<td><a href="${basePath }credit/credit_disposal_detail.jsp">查看</a></td>'+
						'</tr>');
		    	});
		    	$("#recordsTotal").val(page.recordsTotal);
		    }
		});
		//$("#pageNum").val(pageNum);
	}
</script>
</body>

</html>