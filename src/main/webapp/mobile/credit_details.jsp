<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收债权管理|债权详情</title>
    
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
	 <link href="${basePath}hplus/css/share_style.css" rel="stylesheet">
 	<link href="${basePath}hplus/css/share_popup.css" rel="stylesheet">
 	<link href="${basePath}hplus/css/select_share.css" rel="stylesheet">
	<script src="${basePath }hplus/js/share.js"></script>
<body>

<div class="main-container" style="height:100%">
	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
	<div class="row">
		<div class="col-md-12" >
			<div >
			   <div class="modal-dialog">
			      <div class="modal-content">
			         <div class="modal-header">
			            <h4 class="modal-title" id="oblModalLabel" >
			               	债权详细信息
			            </h4>
			            <div class="bdsharebuttonbox bdshare-button-style0-16" style="margin-left: 20%;" data-bd-bind="1469635014810">
							<a class="" onclick="javascript:void(0)">分享到：</a>
							<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
							<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
							<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
							<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">
							<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>	
							
						</div>
			         </div>
			         <div class="modal-body">
			           	<span class="list-group-item active" >
						  债权基本信息
						</span> <span class="list-group-item">债权类型： <c:if
										test="${credit.crType==1 }">民间借贷</c:if> <c:if
										test="${credit.crType==2 }">应收账款</c:if> <c:if
										test="${credit.crType==3 }">银行借贷</c:if> <c:if
										test="${credit.crType==4 }">互联网金融</c:if> <c:if
										test="${credit.crType==5 }">小额信贷</c:if> <c:if
										test="${credit.crType==6 }">典当担保</c:if> <c:if
										test="${credit.crType==7 }">司法裁决</c:if></span> 
						<span class="list-group-item" >债务人名称：${credit.debtName}</span>
						<span class="list-group-item" >所在省份：${credit.debtProvince}</span>
						<span class="list-group-item" >所在城市：${credit.debtCity}</span>
						<span class="list-group-item" >处置方式：
							<c:forEach items="${credit.disTypes}" var="item">
								<c:if test="${item eq '1'}">诉讼</c:if>
								<c:if test="${item eq '2'}">催收</c:if>
								<c:if test="${item eq '3'}">债权转让</c:if>
							</c:forEach></span>
						<span class="list-group-item" style=" color: #f0841d">债权金额：${credit.crAmount} (万元)</span>
						<span class="list-group-item" >佣金范围：${credit.commisionRange}</span>
						<span class="list-group-item" >发布日期：<fmt:formatDate value="${credit.createDate}" type="date" dateStyle="long"/></span>
						<span class="list-group-item" >债权开始日期：${credit.openDate}</span>
						
						<span class="list-group-item active" >高级信息</span>
						<span id="lsg10" class="list-group-item" >债权方联系人：${credit.contactName}</span>
						<span id="lsg11" class="list-group-item" >债权方联系电话：${credit.contactNumber}</span>
						<span id="lsg12" class="list-group-item" >债权凭证：请联系快易收平台方获取</span>
						<span id="lsg13" class="list-group-item" >债权描述：${credit.description}</span>
						<span id="lsg14" class="list-group-item" >备注：请有意者与平台联系，获取更多详情</span>

						<!-- <div class="row">
							<div id="zqfbxy" style="margin-left: 20px"><input id="zqfbxycb" type="checkbox" checked="checked">
							<a data-toggle="modal" data-target="#xieyModal" style="margin-left: 20px">“快易收债权管理”O2O平台抢标告知书</a></div>
						</div> -->
						<input type="hidden" id="lsg14" />
			
			         </div>
			         <div class="modal-footer">
			            <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:history.go(-1)">
			              	 返回
			            </button>
			         </div>
			      </div><!-- /.modal-content -->
			</div><!-- /.modal -->
			</div>
		</div>
	</div>
	<div style="height:55px;"></div>
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
         </div>
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>

<jsp:include page="mobile_footer.jsp"></jsp:include>

<script type="text/javascript">
function publishInfo(){
	if('${userInfo}' == null || '${userInfo}' == ''){
		alert("请先登录后发布!");
		window.location.href = "${basePath}user/tologin";
	}else{
		window.location.href = "${basePath }credit/saveCredit?userId=${userInfo.id}";
	}
}
function selectCredit(){
	if (!$("#zqfbxycb").is(':checked')) {
		alert("您需要同意快易收债权管理O2O平台抢标告知书才能完成抢标");
		return false;
}
}
</script>
</body>
</html>
