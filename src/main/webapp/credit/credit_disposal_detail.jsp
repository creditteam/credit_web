<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
     
                  <!-- 债权人信息 begin-->
					<div class="col-sm-4">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>债权人信息</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
							
                            <form class="form-horizontal m-t" id="commentForm">
                            
                                                   
                            <div class="form-group">
                            <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-8">
                                        <!-- <img alt="image" class="img-circle m-t-xs img-responsive" src="../hplus/img/a2.jpg"> -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3">姓名：</label>
                                <div class="col-sm-8">
                                     	${user.nickname}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3">电话：</label>
                                <div class="col-sm-8">
                                    ${user.userPhone}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3">E-mail：</label>
                                <div class="col-sm-8">
                                    ${user.userEmail}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3">说明：</label>
                                <div class="col-sm-8">
                                      	${user.description}
                                </div>
                            </div>
                        </form>
							
							</div>
						
						</div>
					</div>
					<!-- 债权人信息 end-->
                  
                  <!-- 债权信息 begin -->
                  <div class="col-sm-8">
                  <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>债权详情信息</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                  		    <dl class="dl-horizontal">
                                    <dt>债权类型：</dt>
                                    <dd>
												    <c:if test="${credit.crType==1 }">民间借贷</c:if>
												    <c:if test="${credit.crType==2 }">应收账款</c:if>
												    <c:if test="${credit.crType==3 }">银行借贷</c:if>
												    <c:if test="${credit.crType==4 }">互联网金融</c:if>
												    <c:if test="${credit.crType==5 }">小额信贷</c:if>
												    <c:if test="${credit.crType==6 }">典当担保</c:if>
												    <c:if test="${credit.crType==7 }">司法裁决</c:if>
                                    </dd>
                                </dl>
                  
                              <dl class="dl-horizontal">
                                    <dt>债务人名称：</dt>
                                    <dd>${credit.debtName}</dd>
                               </dl>
                  
                                <dl class="dl-horizontal">
                                    <dt>所在省份：</dt>
                                    <dd>${credit.debtProvince}</dd>
                               </dl>
								<dl class="dl-horizontal">
									<dt>所在城市：</dt>
									<dd>${credit.debtCity}</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>处置方式：</dt>
									<dd><c:forEach items="${credit.disTypes}" var="item">
										<c:if test="${item eq '1'}">诉讼</c:if>
										<c:if test="${item eq '2'}">催收</c:if>
										<c:if test="${item eq '3'}">债权转让</c:if>
									</c:forEach></dd>
								</dl>
								
								<dl class="dl-horizontal">
									<dt>债权金额：</dt>
									<dd>${credit.crAmount} (万元)</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>佣金范围：</dt>
									<dd>${credit.commisionRange}</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>发布日期：</dt>
									<dd><fmt:formatDate value="${credit.openDate}" type="date" dateStyle="long"/></dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权开始日期：</dt>
									<dd><fmt:formatDate value="${credit.agreedDate}" type="date" dateStyle="long"/></dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>债权方联系人：</dt>
									<dd>${credit.contactName}</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权方联系电话：</dt>
									<dd>${credit.contactNumber}</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权凭证：</dt>
									<dd><img src="${credit.debtProof }"/> ${credit.debtProof }</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权描述：</dt>
									<dd>${credit.description}</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权备注：</dt>
									<dd>请有意者与平台联系，获取更多详情</dd>
								</dl>
							</div>
                </div>
            </div>
     
                  <!-- 债权信息  end-->
                </div>
            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script>
        $(document).ready(function(){var d1=[[1262304000000,6],[1264982400000,3057],[1267401600000,20434],[1270080000000,31982],[1272672000000,26602],[1275350400000,27826],[1277942400000,24302],[1280620800000,24237],[1283299200000,21004],[1285891200000,12144],[1288569600000,10577],[1291161600000,10295]];var d2=[[1262304000000,5],[1264982400000,200],[1267401600000,1605],[1270080000000,6129],[1272672000000,11643],[1275350400000,19055],[1277942400000,30062],[1280620800000,39197],[1283299200000,37000],[1285891200000,27000],[1288569600000,21000],[1291161600000,17000]];var data1=[{label:"数据1",data:d1,color:"#17a084"},{label:"数据2",data:d2,color:"#127e68"}];$.plot($("#flot-chart1"),data1,{xaxis:{tickDecimals:0},series:{lines:{show:true,fill:true,fillColor:{colors:[{opacity:1},{opacity:1}]},},points:{width:0.1,show:false},},grid:{show:false,borderWidth:0},legend:{show:false,}});var lineData={labels:["一月","二月","三月","四月","五月","六月","七月"],datasets:[{label:"示例数据",fillColor:"rgba(220,220,220,0.5)",strokeColor:"rgba(220,220,220,1)",pointColor:"rgba(220,220,220,1)",pointStrokeColor:"#fff",pointHighlightFill:"#fff",pointHighlightStroke:"rgba(220,220,220,1)",data:[65,59,40,51,36,25,40]},{label:"示例数据",fillColor:"rgba(26,179,148,0.5)",strokeColor:"rgba(26,179,148,0.7)",pointColor:"rgba(26,179,148,1)",pointStrokeColor:"#fff",pointHighlightFill:"#fff",pointHighlightStroke:"rgba(26,179,148,1)",data:[48,48,60,39,56,37,30]}]};var lineOptions={scaleShowGridLines:true,scaleGridLineColor:"rgba(0,0,0,.05)",scaleGridLineWidth:1,bezierCurve:true,bezierCurveTension:0.4,pointDot:true,pointDotRadius:4,pointDotStrokeWidth:1,pointHitDetectionRadius:20,datasetStroke:true,datasetStrokeWidth:2,datasetFill:true,responsive:true,};var ctx=document.getElementById("lineChart").getContext("2d");var myNewChart=new Chart(ctx).Line(lineData,lineOptions)});
    </script>
</body>

</html>