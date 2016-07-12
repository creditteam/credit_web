<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <Link Rel="icon" href="/hplus/img/kuaiyishou.ico" type=”image/x-icon”>

    <title>快易收-您的债权管理专家</title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper wrapper-content">
                <div class="container">
                                  
                  <!-- 债权信息 begin -->
                  <div class="col-sm-12">
                  <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>线索悬赏信息</h5>
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
                                    <dt>悬赏类型：</dt>
                                    <dd>找人</dd>
                                </dl>
                  
                              <dl class="dl-horizontal">
                                    <dt>金额：</dt>
                                    <dd> 200</dd>
                               </dl>
                  
                                <dl class="dl-horizontal">
                                    <dt>姓名：</dt>
                                    <dd>黄飞</dd>
                               </dl>
								<dl class="dl-horizontal">
									<dt>身份证：</dt>
									<dd> 432826198605240423</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>发布日期：</dt>
									<dd>  Tuesday, May 17, 2016</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>有效日期：</dt>
									<dd>30天</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>发布日期：</dt>
									<dd>2016年07月07日</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>状态：</dt>
									<dd> 悬赏中</dd>
								</dl>
                               <hr/>
								<dl class="dl-horizontal">
									<dt> 发布者：</dt>
									<dd>请抢标后联系平台获取</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>联系电话：</dt>
									<dd> 请在抢标后联系快易收平台方获取*</dd>
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
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>