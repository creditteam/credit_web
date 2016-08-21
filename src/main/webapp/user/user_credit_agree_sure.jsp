<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
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
									<h5>债权协议-确认居间服务协议(前期)</h5>
								</div>
								 <div class="ibox-content">
									<form class="form-horizontal m-t" id="signAgreeForm" action="${basePath }agreement/updStatus" method="post" target="_self" enctype="multipart/form-data">
										<input type="hidden" name="userId" value="${userId}">
										<input type="hidden" name="creditId" value="${creditId}">
										<div class="form-group">
											<div class="col-sm-8">
												居间服务协议（用于前期相关事项的约定）
　
									甲方： ×××律师事务所、××律师    
									
									乙方：易收（深圳）网络科技有限公司。
									法定代表人：李春妹，总经理。
									
									甲方欲开拓全国范围内的法律服务业务，乙方掌握较丰富的业务信息。为了更好的开拓市场，实现双方互利共赢，甲乙双方达成合作意向，由乙方为甲方提供业务信息和业务机会，协助推进业务的进展。根据中华人民共和国相关法律法规的规定，本着平等、自愿、诚信、互利的原则，双方经过友好协商，现双方就×××  与×××            
									                        一案(标的额    万元)项目的居间服务的前期阶段（即甲方与委托方签订服务合同前或甲乙双方另行签订居间服务协议前）的相关事项达成如下协议：
									
									    第一条、甲方权利义务
									　　1、积极配合乙方，为乙方的居间活动提供必要的协助与配合。
									　　2、依据乙方要求，提供相关资料文件。
									　　3、了解乙方所推介业务的基本信息（包括当事信息、案件信息等）。
									4、在合理的市场服务价格的范围内，与乙方所推介业务的客户充分沟通，达成服务协议。
									5、不得以逃避居间服务费为目的，隐瞒私自与乙方所推介业务的客户签订服务协议和服务费数额的事实。
									6、如实向乙方告知甲方与乙方所推介业务的对接情况、签约信息、变更信息和费用支付情况。
									
									第二条、乙方权利义务
									    1、为甲方提供信息、联络、协助、撮合等服务，并促成甲方与客户         
									签订法律服务合同。
									　　2、不得与他人恶意串通，损害甲方利益。
									　　3、积极完成居间任务，促成甲方与所推介业务的客户签订协议，达成交易。
									
									    第三条、居间服务佣金
									1、甲方与客户　　    签订服务合同，完成所约定的任务（包括部分完成）从客户　　　      处获取服务费。
									2、甲方从客户　　　  或关联主体处所获取服务费的10～20%作为乙方的居间服务佣金（具体比例视甲方与客户所签订服务协议的情况另行确定）。
									　　3、除居间服务佣金外，乙方不得向甲方收取其他任何费用（押金、信息费等）。
									
									第四条、保密条款
									为了保证甲乙双方顺利、持久地开展合作，双方确认以下信息属商业秘密，双方不得泄露：
									1、甲方履行本合约过程中（包括签订本合约前）所获得的业务信息属商业秘密，甲方除用于业务的正常开展外，不得对外泄露。
									2、乙方所运营的“快易收债权管理”O2O平台（www.eshou360.com，包括PC端网站、手机端微网站、微信公众号、APP等）的商业模式、经营、合作、技术等信息均属商业秘密，甲方不得泄露。
									3、甲方履行本合约过程中（包括签订本合约前）所获得的关于乙方和第三方的经营、合作、技术等信息均属商业秘密，甲方不得过问，已获知的不得泄露。
									4、双方的居间服务信息、居间服务费数额及收取方式等均属商业秘密，甲方不得泄露。
									
									    第五条、违约责任
									1、甲方违反本协议第四条“保密条款”的约定的，应向乙方支付违约金人民币2万元，给乙方所造成的损失超出上述违约金的，乙方保留进一步索赔的权利。
									2、甲方以逃避居间服务费为目的，私自与乙方所推介业务的客户签订服务协议的，视为乙方就本协议所涉的业务向甲方提供了完全的居间服务，甲方应以本协议所涉业务标的额的  2% 向乙方支付居间服务费。
									3、甲方以逃避居间服务费为目的，未如实告知与乙方所推介业务的客户所约定服务费收取数额和方式或未如实告知实际从客户处所获取的服务费的，视为乙方就本协议所涉的业务向甲方提供了完全的居间服务，甲方应以本协议所涉业务标的额的  2% 向乙方支付居间服务费。
									
									
									第六条、其他
									1、甲方与乙方所推介业务的客户所签订的服务合同独立于本居间服务协议，甲方与客户签订的服务合同的权利义务由甲方享有与承受。
									2、乙方为甲方与客户              之间的交易提供了机会，对于甲方今后自行与客户              达成的除本协议项下的债权债务处置业务外的其他债权债务处置业务（包括诉讼和非诉讼），甲方按照其从客户              （或关联主体）实际所获取的服务费的3%支付居间服务费。此费用于甲方从客户              （或关联主体）获取服务费后的5日内向乙方支付。
									3、本合同一式二份，甲乙双方各执一份。本协议由双方签署或通过邮件、微信等方式双方确认即生效。
									4、本协议一经生效，即对双方具有法律约束力。双方经协商一致可以对合同内容进行变更或对未尽事项做出补充规定（可签署书面补充协议或通过邮件、微信等方式确认），与本合同具有同等效力。
									
									
									甲方：                                  乙方：易收（深圳）网络科技有限公司
									
									
									日期：                                     日期：

											</div>
										</div>
										<div class="form-group">
											<hr>
											<table width="98%">
												<tr>
													<td align="left">&nbsp;&nbsp;&nbsp;
														<b><label for="signStatus"><input type="checkbox" name="signStatus" id="signStatus" value="1" />同意&lt;居间服务协议(前期)&gt;</label></b>
														<span id="titleSub"></span>
													</td>
													<td align="right"><button type="button" class="btn btn-default" onclick="goToBack()">返回</button>&nbsp;
														<button type="button" class="btn btn-primary" onclick="checkAgree()">确定</button>
													</td>
												</tr>
											</table>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="/common/_footer.jsp"></jsp:include>
		</div>
	</div>
	<div class="modal fade" id="example" tabindex="-1" role="dialog" data-backdrop="static"
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
              	 确认提示
            </h4>
         </div>
         <div class="modal-body">
            	确认签订《居间服务协议(前期)》吗?
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消
            </button>
            <button type="button" class="btn btn-primary" onclick="submitData()">
               	确定
            </button>
         </div>
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>
<jsp:include page="/common/_script.jsp"></jsp:include>
    <script type="text/javascript">
    	function goToBack(){
    		window.location.href = "${basePath }credit/userCreditList";
    	}
    	function checkAgree(){
    		var signStatus = $("#signStatus").is(':checked');
    		if(!signStatus){
    			$("#titleSub").html("<font color='red'>必须先勾选同意</font>");
    			return false;
    		}
    		
    		$("#example").modal('show');
    	}
    	function submitData(){
    		$("#signAgreeForm").submit();
    	}
    </script>
</body>

</html>