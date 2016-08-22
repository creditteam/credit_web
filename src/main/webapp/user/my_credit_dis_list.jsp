<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>快易收-专注债权处置</title>
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
                        <h5>我处置的债权</h5>
                        <div class="ibox-tools">
                        </div>
                    </div>
                    <div class="ibox-content">
                      <!-- 搜索表单 -->
                      <form id="signupForm" action="${basePath }credit/userCreditList" method="post" target="_self">
                      <div class="row m-b-sm m-t-sm">
                            <div class="col-md-1">
                                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                            </div>
                            <div class="col-md-11">
                                <div class="input-group">
                                    <input type="text" name="contactName" value="${pd.contactName }"  placeholder="请输入债务人名称" class="input-sm form-control"> <span class="input-group-btn">
                                     <button type="submit" class="btn btn-sm btn-primary">搜索</button> </span>
                                </div>
                            </div>
                        </div>
                        </form>   
                      <!-- 数据列表 -->
                       <table class="table table-hover no-margins">
					<thead>
						<tr>
							<th>所在地</th>
							<th>债务人</th>
							<th>金额(万元)</th>
							<th>佣金</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					    <c:forEach items="${pd.data }" var="credit">
						<tr>
							<td><span class="label label-warning">${credit.debtProvince }</span></td>
							<td>${credit.debtName }</td>
							<td><i class="fa fa-clock-o"></i> ${credit.crAmount }</td>
							<td class="text-navy"><i class="fa fa-level-up"></i>${credit.commisionRange}</td>
							<td><a href="${basePath }credit/myCreditDetails?id=${credit.id}" target="_self">[查看]</a>
							<c:if test="${credit.crStatus==2 }">
							<a href="${basePath}agreement/lookAgree?userId=${credit.dealTeamName}&creditId=${credit.id}&agreeType=1" target="_self">[居间协议(前期)]</a>
							</c:if>
							<c:if test="${credit.crStatus==3 }">
								<a href="${basePath }credit/signedAgree?id=${credit.id}" target="_self">[上传服务合同]</a>
							</c:if>
							<c:if test="${credit.crStatus==4 }">
							    <a href="${basePath}agreement/lookAgree?userId=${credit.dealTeamName}&creditId=${credit.id}&agreeType=3" target="_self">[居间协议(后期)]</a>
								<a href="${basePath }credit/signedAgree?id=${credit.id}" target="_self">[上传协议]</a>
							</c:if>
							<c:if test="${credit.crStatus eq 5 or credit.crStatus eq 6 or credit.crStatus eq 7 }">
								<a href="javascript:void(0)" onclick="showSelectModal('${credit.crStatus}','${credit.id}')">[更新进度]</a>
							</c:if>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>

                    <div class="hr-line-dashed"></div>
                    <gvtv:newPage href="${basePath }credit/userCreditList" pageType="pc"></gvtv:newPage>
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
    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script>
        $(document).ready(function(){var d1=[[1262304000000,6],[1264982400000,3057],[1267401600000,20434],[1270080000000,31982],[1272672000000,26602],[1275350400000,27826],[1277942400000,24302],[1280620800000,24237],[1283299200000,21004],[1285891200000,12144],[1288569600000,10577],[1291161600000,10295]];var d2=[[1262304000000,5],[1264982400000,200],[1267401600000,1605],[1270080000000,6129],[1272672000000,11643],[1275350400000,19055],[1277942400000,30062],[1280620800000,39197],[1283299200000,37000],[1285891200000,27000],[1288569600000,21000],[1291161600000,17000]];var data1=[{label:"数据1",data:d1,color:"#17a084"},{label:"数据2",data:d2,color:"#127e68"}];$.plot($("#flot-chart1"),data1,{xaxis:{tickDecimals:0},series:{lines:{show:true,fill:true,fillColor:{colors:[{opacity:1},{opacity:1}]},},points:{width:0.1,show:false},},grid:{show:false,borderWidth:0},legend:{show:false,}});var lineData={labels:["一月","二月","三月","四月","五月","六月","七月"],datasets:[{label:"示例数据",fillColor:"rgba(220,220,220,0.5)",strokeColor:"rgba(220,220,220,1)",pointColor:"rgba(220,220,220,1)",pointStrokeColor:"#fff",pointHighlightFill:"#fff",pointHighlightStroke:"rgba(220,220,220,1)",data:[65,59,40,51,36,25,40]},{label:"示例数据",fillColor:"rgba(26,179,148,0.5)",strokeColor:"rgba(26,179,148,0.7)",pointColor:"rgba(26,179,148,1)",pointStrokeColor:"#fff",pointHighlightFill:"#fff",pointHighlightStroke:"rgba(26,179,148,1)",data:[48,48,60,39,56,37,30]}]};var lineOptions={scaleShowGridLines:true,scaleGridLineColor:"rgba(0,0,0,.05)",scaleGridLineWidth:1,bezierCurve:true,bezierCurveTension:0.4,pointDot:true,pointDotRadius:4,pointDotStrokeWidth:1,pointHitDetectionRadius:20,datasetStroke:true,datasetStrokeWidth:2,datasetFill:true,responsive:true,};var ctx=document.getElementById("lineChart").getContext("2d");var myNewChart=new Chart(ctx).Line(lineData,lineOptions)});
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
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>