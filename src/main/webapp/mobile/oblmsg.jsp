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
    <title>快易收债权管理|债权信息</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<style type="text/css">
		html,body {
			height: 100%;
		}
	</style>
  </head>
	<jsp:include page="mobile_meta.jsp"></jsp:include>
<body>

<div class="main-container" style="height:100%">
<div class="row">
			<div class="col-xs-6"><img style="height: 25px" id="logo" src="<%=basePath%>hplus/img/logo.jpg"  alt="快易收"></div>
			<div class="col-xs-6"><p style="color: #5f5d5d">服务热线 ： 4008-338-997</p></div>
		</div>
	<div class="row">
	<div class="col-md-12" >
		<table class="table table-striped" style=" text-align:center; ">
		   <caption style="text-align:center;">债权信息</caption>
		   <thead>
		      <tr>
		         
		         <th style="text-align:center;">所在地</th>
		         <th style="text-align:center;">金额(万元)</th>
		         <th style="text-align:center;">佣金</th>
		        
		         <th style="text-align:center;"><a class="btn btn-success" href="${basePath }mobile/oblReg.jsp" ><i class="lyphicon glyphicon-plus"></i>发布项目</a></th>
		      </tr>
		   </thead>
		   <tbody id="obltb_body">
		   <!--<c:forEach items="${moblmsglist}" var="ident">
		   		<tr onclick="showcc(${ident.did})" data-toggle="modal" data-target="#oblsModal">
		   		
		         <td style=""><span>${ident.city}</span><br><span>所在地</span></td>
		         <td style=""><span style="color: #f0841d">${ident.jine}</span><br><span>金额(万元)</span></td>
		         <td style=""><span>${ident.yongjin}</span><br><span>佣金</span></td>
		         <td style="">
		         	<c:if test="${ident.ztype == '1'}">
						<button  style=" margin-top: 20px; background-color: red; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" onclick="showcc(${ident.did})" disabled="disabled">招标中</button></td>
						</c:if>
						<c:if test="${ident.ztype == '2'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">处置中</button></td>
						</c:if>
						<c:if test="${ident.ztype == '3'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">已结束</button></td>
					</c:if>
		         </td>
		   		</tr>
		   </c:forEach>-->
		   		<tr onclick="showcc(1)" data-toggle="modal" data-target="#oblsModal">
		   		
		         <td style=""><span>上海</span></td>
		         <td style=""><span style="color: #f0841d">8</span></td>
		         <td style=""><span>5</span></td>
		         <td style="">
		         	<c:if test="${'1' == '1'}">
						<button  style="background-color: red; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" onclick="showcc(${ident.did})" disabled="disabled">招标中</button></td>
						</c:if>
						<c:if test="${'1' == '2'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">处置中</button></td>
						</c:if>
						<c:if test="${'1' == '3'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">已结束</button></td>
					</c:if>
		         </td>
		   		</tr>
		   		<tr onclick="showcc(1)" data-toggle="modal" data-target="#oblsModal">
		   		
		         <td style=""><span>上海</span></td>
		         <td style=""><span style="color: #f0841d">8</span></td>
		         <td style=""><span>5</span></td>
		         <td style="">
		         	<c:if test="${'1' == '1'}">
						<button  style="background-color: red; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" onclick="showcc(${ident.did})" disabled="disabled">招标中</button></td>
						</c:if>
						<c:if test="${'1' == '2'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">处置中</button></td>
						</c:if>
						<c:if test="${'1' == '3'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">已结束</button></td>
					</c:if>
		         </td>
		   		</tr>
		   		<tr onclick="showcc(1)" data-toggle="modal" data-target="#oblsModal">
		   		
		         <td style=""><span>上海</span></td>
		         <td style=""><span style="color: #f0841d">8</span></td>
		         <td style=""><span>5</span></td>
		         <td style="">
		         	<c:if test="${'1' == '1'}">
						<button  style="background-color: red; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" onclick="showcc(${ident.did})" disabled="disabled">招标中</button></td>
						</c:if>
						<c:if test="${'1' == '2'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">处置中</button></td>
						</c:if>
						<c:if test="${'1' == '3'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">已结束</button></td>
					</c:if>
		         </td>
		   		</tr>
		   		<tr onclick="showcc(1)" data-toggle="modal" data-target="#oblsModal">
		   		
		         <td style=""><span>上海</span></td>
		         <td style=""><span style="color: #f0841d">8</span></td>
		         <td style=""><span>5</span></td>
		         <td style="">
		         	<c:if test="${'1' == '1'}">
						<button  style="background-color: red; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" onclick="showcc(${ident.did})" disabled="disabled">招标中</button></td>
						</c:if>
						<c:if test="${'1' == '2'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">处置中</button></td>
						</c:if>
						<c:if test="${'1' == '3'}">
						<button  style=" margin-top: 20px; border-radius:25px;" class="btn btn-yellow export btn-sm" id="qd${ident.did}" disabled="disabled">已结束</button></td>
					</c:if>
		         </td>
		   		</tr>
		   		
		   </tbody>
		</table>
	</div>
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
<script type="text/javascript">
var hismeg = 0;
var nextmeg = 0;
$(document).ready(function (){
	//alert('${oblMsgPage-1}');
	/* if (${oblMsgPage == 1}) {
		$("#hispage").removeAttr("href");
		hismeg = 1;
		$("#fpage").css("background-color", "#f2f2f2");
	} else if (${oblMsgPage == 2}) {
		$("#hispage").attr("href", "IdentPage?page=1");
		$("#spage").css("background-color", "#f2f2f2");
	}else if (${oblMsgPage == 3}) {
		$("#hispage").attr("href", "IdentPage?page=2");
		$("#tpage").css("background-color", "#f2f2f2");
	} else {
		$("#hispage").attr("href", "IdentPage?page="+${oblMsgPage-1});
		$("#tpage").css("background-color", "#f2f2f2");
		$("#fpage").text(${oblMsgPage-2});
		$("#spage").text(${oblMsgPage-1});
		$("#tpage").text(${oblMsgPage});
		$("#fopage").text(${oblMsgPage+1});
		$("#fifpage").text(${oblMsgPage+2});
		$("#fpage").attr("href", "IdentPage?page="+${oblMsgPage-2});
		$("#spage").attr("href", "IdentPage?page="+${oblMsgPage-1});
	}
	
	if (${oblmsgsize == 1}) {
		$("#fopage").removeAttr("href");
		$("#fifpage").removeAttr("href");
		$("#nextpage").removeAttr("href");
		nextmeg = 1;
	} else {
		$("#fopage").attr("href", "IdentPage?page="+${oblMsgPage +1});
		$("#fifpage").attr("href", "IdentPage?page="+${oblMsgPage +2});
		$("#fopage").attr("href", "IdentPage?page="+${oblMsgPage +1});
	} */
});

function cheNonMsg() {
	
}

function checkmeg() {
	
	if (nextmeg == 1) {
		alert("当前是最后一页");
	}
}
function checkmeg1() {
	
	if (nextmeg == 1) {
		alert("当前是最后一页");
	}
}
</script>

<div class="modal fade" id="oblsModal" tabindex="-1" role="dialog" 
   aria-labelledby="oblModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="oblModalLabel" >
               	债权详细信息
            </h4>
         </div>
         <div class="modal-body">
           	<span class="list-group-item active" >
  债权基本信息
</span>
<span id="lsg1" class="list-group-item" >债权类型：</span>
<span id="lsg2" class="list-group-item" >债务人名称：</span>
<span id="lsg3" class="list-group-item" >所在省份：</span>
<span id="lsg4" class="list-group-item" >所在城市：</span>
<span id="lsg5" class="list-group-item" >处置方式</span>
<span id="lsg6" class="list-group-item" >佣金范围</span>
<span id="lsg7" class="list-group-item" >发布日期</span>
<span id="lsg8" class="list-group-item" >债权开始日期</span>
<span id="lsg9" class="list-group-item" style=" color: #f0841d">债权金额</span>
<span class="list-group-item active" >
高级信息
</span>
<span id="lsg10" class="list-group-item" >债权方联系人</span>
<span id="lsg11" class="list-group-item" >债权方联系电话</span>
<span id="lsg12" class="list-group-item" >债权凭证：请在抢标后联系快易收平台方获取</span>
<span id="lsg13" class="list-group-item" >债权描述</span>
<div class="row">
			<div id="zqfbxy" style="margin-left: 20px"><input id="zqfbxycb" type="checkbox" checked="checked">
			<a data-toggle="modal" data-target="#xieyModal" style="margin-left: 20px">“快易收债权管理”O2O平台抢标告知书</a></div>
		</div>
<input type="hidden" id="lsg14" />

         </div>
         <div class="modal-footer">
        
          <button id="modalqianb" type="button" class="btn btn-primary" data-dismiss="modal" onclick="takeShowcc()" style="display: none">
               抢标
            </button>
            
            <button type="button" class="btn btn-primary" data-dismiss="modal" >
               关闭
            </button>
         </div>
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="xieyModal" tabindex="-1" role="dialog" 
   aria-labelledby="xieyModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="xieyModalLabel">
               “快易收债权管理”O2O平台抢标告知书
            </h4>
         </div>
         <div class="modal-body">
           尊敬的用户：
   &nbsp&nbsp&nbsp&nbsp 您好！<br>
&nbsp&nbsp&nbsp&nbsp您拟通过“快易收债权管理”O2O平台（www.eshou360.com，以下简称“本平台”）为您所选择的债权项目的业主提供债权处置服务。请您在抢标之前，仔细阅读如下内容，并决定是否接受：<br>
一、您确认您所提供给“本平台”的所有信息、资料的真实性、合法性、有效性。<br>
    二、您确认您是依法成立的具有完全民事行为能力和民事权利能力的组织或个人。<br>
三、您确保勤勉尽责，忠诚守信，遵纪守法，在法律的范围内努力完成客户所委托的事项。<br>
四、您确保遵守法律、国家政策和本平台的规章制度，保守客户和“本平台”的商业秘密。<br>
五、您应向“本平台”的运营者支付居间服务费。您从所服务的“本平台”客户（债权人）或关联方（包括但不限于客户所在的组织、家属和债务人等）处所获取的债权处置服务费的10%作为乙方的居间服务费，并应及时支付。<br>
六、您确保及时、如实地向“本平台”报告所处置项目的进度和收费情况。<br>
七、维护“本平台”的形象和声誉，不得作出有损平台形象和声誉的行为，不得与第三人勾结损害本平台利益。<br>
八、“本平台”不对债权人所发布的债权信息的真实性、合法性与有效性做任何形式的担保，您可根据自己的学识、能力、经验自行判断。<br>
九、“本平台”不作为债权方与处置方之间合同关系的当事人。<br>
十、您在“本平台”上点击“确认”行为可视为您对上述内容的充分认知与认可。

         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-success" 
               data-dismiss="modal">关闭
            </button>
            <button id="xieyqianbbtn" type="button" class="btn btn-primary" data-dismiss="modal" onclick="takeShowcc()" style="display: none">
               同意协议并抢标
            </button>
         </div>
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>

<jsp:include page="mobile_footer.jsp"></jsp:include>

<script type="text/javascript">
function showcc(indet){
	 $.ajax({
		 type: "POST", //用POST方式传输
		 dataType: "json", //数据格式:JSON
		 url: "IdentShow", //目标地址
		 data: "did=" + indet+"&zxz="+${user.userid},
		 error: function (XMLHttpRequest, textStatus, errorThrown) {
			 alert("查看订单失败，请稍候再试");
		 },
		 success: function (msg){
			 $("#lsg1").text("债权类型：        "+msg.yihuan);
			 $("#lsg2").text("债务人名称：    "+msg.yuedingdate);
			 $("#lsg3").text("所在省份    ：    "+msg.province);
			 $("#lsg4").text("所在城市：        "+msg.city);
			 $("#lsg5").text("处置方式：        "+msg.jiedan);
			 $("#lsg6").text("佣金范围：        "+msg.yongjin);
			 $("#lsg7").text("发布日期：        "+msg.creatdate);
			 $("#lsg8").text("债权开始日期：    "+msg.enddate);
			 $("#lsg9").text("债权金额：        "+msg.jine+"  (万元)");
			 $("#lsg10").text("债权方联系人：    "+msg.dname);
			 $("#lsg11").text("债权方联系电话：  "+msg.zixuanzhe);
			 $("#lsg12").text("债权凭证、债务人联系电话及债权人联系电话：请在抢标后联系快易收平台方获取");
			 $("#lsg13").text("债权描述：        "+msg.des);
			 
			 $("#lsg14").val(msg.did);
			 if (msg.ztype==2) {
				 $("#modalqianb").attr("disabled", "disabled");
				 $("#xieyqianbbtn").attr("disabled", "disabled");
			} else {
				$("#modalqianb").removeAttr("disabled");
				$("#xieyqianbbtn").removeAttr("disabled");
			}
		 }
	 });
}

function takeShowcc() {
	 if (${user.userid < 0}) {
		alert("请先登录系统，再点击招标");
		return;
	}
	 if (!$("#zqfbxycb").is(':checked')) {
			alert("您需要同意快易收债权管理O2O平台抢标告知书才能完成抢标");
			return false;
		}
	 var did = $("#lsg14").val();
	 if (${user.ctype == 1}) {
		 $.ajax({
			 type: "POST", //用POST方式传输
			 dataType: "text", //数据格式:JSON
			 url: "IdentTack", //目标地址
			 data: "did=" + did+"&zxz="+${user.userid},
			 error: function (XMLHttpRequest, textStatus, errorThrown) {
				 alert("抢单失败");
			 },
			 success: function (msg){
				 var ddid="qd"+did;
				 alert(msg);
				 document.getElementById(ddid).disabled=true;
				 //$("#modalqianb").attr("disabled", "disabled");
				//$("#xieyqianbbtn").attr("disabled", "disabled");
			 }
		 });
	} else {
		alert("你不是处置方，无法抢单");
	}	
}


</script>
  </body>
</html>
