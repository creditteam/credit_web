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
    <title>快易收债权管理|悬赏</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<jsp:include page="mobile_meta.jsp"></jsp:include>
	<style type="text/css">
			html,body {
				height: 100%;
			}
		</style>
  </head>
  
  <body>
    <div class="main-container" style="height:100%">
    <div class="row">
			<div class="col-xs-6"><img style="height: 24px" id="logo" src="${basePath}hplus/img/logo.jpg"  alt="快易收"></div>
			<div class="col-xs-6"><p style="color: #5f5d5d">服务热线:4008-338-997</p></div>
		</div>
	    <div class="row">
	    	<table class="table table-striped" >
	    	<caption style="text-align:center;">悬赏</caption>
			   <thead>
			      <tr>
			         <th style="text-align:center;">类型</th>
			         <th style="text-align:center;">所在地</th>
			         <th style="text-align:center;">悬赏金额</th>
			         <th style="text-align:center;">悬赏状态</th>
			         <th style="text-align:center;"><a class="btn btn-success" href="${basePath}/mobile/xuansReg.jsp"><i class="lyphicon glyphicon-plus"></i>发布悬赏</a></th>
			      </tr>
			   </thead>
			   <tbody>
			     <tr class="text-center">
			         <td>找人</td>
			         <td>湖南</td>
			         <td>8000</td>
			         <td id="ace1">悬赏中</td>
			         <td><button class="btn btn-primary" id="sqd1" onclick="showXScc(1)" data-toggle="modal" data-target="#xuansModal"><i class="glyphicon glyphicon-zoom-in"></i> 查看</button></td>
		   		</tr>
		   		<tr class="text-center">
			         <td>找车</td>
			         <td>河南</td>
			         <td>8000</td>
			         <td id="ace2">悬赏中</td>
			         <td><button class="btn btn-primary" id="sqd2" onclick="showXScc(2)" data-toggle="modal" data-target="#xuansModal"><i class="glyphicon glyphicon-zoom-in"></i> 查看</button></td>
		   		</tr>
		   		<tr class="text-center">
			         <td>找房产</td>
			         <td>越南</td>
			         <td>8000</td>
			         <td id="ace3">悬赏中</td>
			         <td><button class="btn btn-primary" id="sqd3" onclick="showXScc(3)" data-toggle="modal" data-target="#xuansModal"><i class="glyphicon glyphicon-zoom-in"></i> 查看</button></td>
		   		</tr>
		   		<tr class="text-center">
			         <td>找人</td>
			         <td>湖南</td>
			         <td>8000</td>
			         <td id="ace1">悬赏中</td>
			         <td><button class="btn btn-primary" id="sqd1" onclick="showXScc(1)" data-toggle="modal" data-target="#xuansModal"><i class="glyphicon glyphicon-zoom-in"></i> 查看</button></td>
		   		</tr>
		   		<tr class="text-center">
			         <td>找车</td>
			         <td>河南</td>
			         <td>8000</td>
			         <td id="ace2">悬赏中</td>
			         <td><button class="btn btn-primary" id="sqd2" onclick="showXScc(2)" data-toggle="modal" data-target="#xuansModal"><i class="glyphicon glyphicon-zoom-in"></i> 查看</button></td>
		   		</tr>
			   </tbody>
			</table>
	    </div>
	    <div class="row text-center">
		<ul class="pagination">
		  <li><a id="hispage" onclick="checkmeg()" href="IdentPage?page=1">上一页</a></li>
		  <li><a id="fpage" onblur="cheNonMsg()" href="IdentPage?page=1">1</a></li>
		  <li><a id="spage" onblur="cheNonMsg()" href="IdentPage?page=2">2</a></li>
		  <li><a id="tpage" href="IdentPage?page=3">3</a></li>
		  <li><a id="fopage" onclick="checkmeg1()" href="IdentPage?page=4">4</a></li>
		  <li><a id="fifpage" onclick="checkmeg1()" href="IdentPage?page=5">5</a></li>
		  <li><a id="nextpage" onclick="checkmeg1()" href="IdentPage?page=1">下一页</a></li>
		</ul>
	</div>
    </div>
    
    <!-- <div class="modal fade" id="xuansModal" tabindex="-1" role="dialog" 
   aria-labelledby="xuansModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="xuansModalLabel" style="font-size: 30px">
               	债权详细信息
            </h4>
         </div>
         <div class="modal-body">
           	<span class="list-group-item active" style="font-size: 30px">
  债权基本信息
</span>
<span id="xslsg1" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg2" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg3" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg4" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg5" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg6" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg7" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg8" class="list-group-item" style="font-size: 30px"></span>

<span class="list-group-item active" style="font-size: 30px">
高级信息
</span>
<span id="xslsg10" class="list-group-item" style="font-size: 30px"></span>

<span id="xslsg12" class="list-group-item" style="font-size: 30px"></span>
<span id="xslsg13" class="list-group-item" style="font-size: 30px"></span>
<input type="hidden" id="xslsg14" />

         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal" style="font-size: 30px">关闭</button>
         </div>
      </div>/.modal-content
</div>/.modal
</div> -->

<jsp:include page="mobile_footer.jsp"></jsp:include>

<script type="text/javascript">
function showXScc(indet){
	 
	 $.ajax({
		 type: "POST", //用POST方式传输
		 dataType: "json", //数据格式:JSON
		 url: "XuanShang?method=3589", //目标地址
		 data: "xsid=" + indet,
		 error: function (XMLHttpRequest, textStatus, errorThrown) {
			 alert("查看订单失败，请稍候再试");
		 },
		 success: function (msg){
			 $("#xslsg1").text("悬赏类型：        "+msg.xstype);
			 $("#xslsg2").text("所在地：    "+msg.city);
			 $("#xslsg3").text("金额 (元)   ：    "+msg.jine);
			 $("#xslsg4").text("姓名：        "+msg.xsname);
			 $("#xslsg5").text("身份证：        "+msg.xsshenf);
			 $("#xslsg6").text("发布日期：        "+msg.createtime);
			 $("#xslsg7").text("有效日期：        "+msg.enddate);
			 $("#xslsg8").text("状态：    "+msg.aice1);
			 
			 $("#xslsg10").text("发布者：    请抢标后联系平台获取");
			 $("#xslsg12").text("联系电话：请在抢标后联系快易收平台方获取");
			 $("#xslsg13").text("悬赏描述：        "+msg.des);
			 
			 $("#xslsg14").val(msg.xsid);
		 }
	 });
}
</script>
  </body>
</html>
