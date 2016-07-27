
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>
<style>
<!--
.wxewmc {
  height: 200px; 
  width: 200px;
  position: absolute;
  top: 25px;
  text-align: center;
  padding: 25px 12px 10px;
  font-style: normal;
  z-index: 9999;
  display: none;
 }
-->
</style>
<script type="text/javascript">
$(document).ready(function(){
	  $("#weixem").hover(function() {
		  //alert("1a");
	   	  $("#wxewm").animate({opacity: "show", left: "35%"}, "fast");
	  }, function() {
		  $("#wxewm").hide();
	  });
	  $("#shoujiem").hover(function() {
		  //alert("1a");
	   	  $("#sjewm").animate({opacity: "show", right: "25%"}, "fast");
	  }, function() {
		  $("#sjewm").hide();
	  });
});
</script>
<!-- 头部 -->
 <div class="row border-bottom" style="background-color: #FF7F50;">
        <div class="row">      
        <div class="col-md-4 text-center" style=" float: left;line-height: 30px;padding-left: 100px">
	        <table>
			<tr>
				<td align="right"><span style="color: #fff">服务热线 ：<b style="font-size: 16px">4008-338-997</b></span></td>
				<td>
                    <img id="weixem" alt="weixin" src="${basePath}hplus/img/weixin88.png" style="height: 23px; padding-left: 50px">
                    <em id="wxewm" class="wxewmc"><img style="top: -20px" class="carousel-inner img-responsive img-rounded" alt="" src="${basePath}hplus/img/kuaiyishou.jpg"></em>
				</td>
				<td><a target="_blank" href="http://www.weibo.com/p/1005055902432730/home?from=page_100505&mod=TAB&is_all=1#place" style="">
					<img height="23px" alt="微博" src="${basePath}hplus/img/weibo88.png"></a></td>
				<td>
                    <img id="shoujiem" alt="" src="${basePath}hplus/img/shouji88.png" style="height: 23px; width: 23px;padding-left: -2px">
                    <em id="sjewm" class="wxewmc"><img style="top: -20px" class="carousel-inner img-responsive img-rounded" alt="" src="hplus/img/yidashouji.png"></em>
				</td>
			</tr>
		    </table>
        </div>
        <div class="col-md-5 text-center" style=" float: right;line-height: 30px;">
			   <c:if test="${empty userInfo }">
				<a href="${basePath }user/tologin" style="margin-bottom: 1px; color: #fff">会员登录</a>
				<a href="${basePath }user/toRegister" style="margin-bottom: 1px; color: #fff">免费注册</a>
				</c:if>
				<c:if test="${not empty userInfo }">
				欢迎你，${userInfo.userEmail }
				<a  href="${basePath }user/index" target="_blank" style="color: #fff">用户中心</a>
				| <a  href="${basePath }/user/loginout" target="_blank" style="color: #fff">退出</a>
				</c:if> 
				| <a  href="${basePath }help/help.jsp#about_us"  target="_blank" style="color: #fff">关于我们</a>
				| <a  href="${basePath }help/help.jsp#service_us"  target="_blank" style="color: #fff">法律声明</a>
				| <a  href="${basePath }help/help.jsp#idea"  target="_blank" style="color: #fff">意见反馈</a> 
				| <a  href="${basePath }help/help.jsp"  target="_blank" style="color: #fff">帮助中心</a>
			</table>
		</div> 
		</div>
</div> 

<!-- 导航菜单信息  bgein -->
<div class="row border-bottom white-bg">
	<nav class="navbar navbar-static-top" role="navigation">
		<div class="col-md-4">
		    <img alt="" src="${basePath }hplus/img/logo.jpg">
		</div>
		<div class="navbar-collapse collapse" id="navbar" style="float: right;">
			<ul class="nav navbar-nav" style="font-size: 14px;padding-right: 50px">
				<li class="active"><a aria-expanded="false" role="button" href="${basePath }index" target="_self">首页</a></li>
				<li class="dropdown"><a aria-expanded="false" role="button" href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">债权大厅 <span class="caret"></span></a>
					<ul role="menu" class="dropdown-menu">
						<li><a href="${basePath }credit/navlist?creditType=1"  role="button" onclick="javacript:void(0)">债权追收</a></li>
						<li><a href="${basePath }credit/navlist?creditType=2"  role="button" onclick="javacript:void(0)">债权转让</a></li>
					</ul>
				</li>
				<li><a aria-expanded="false" role="button" href="${basePath }disposal.jsp">处置方式 </a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }reward/navlist" target="_self">线索悬赏 </a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }credit/saveCredit?creditType=1" target="_self">一键发布</a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }user/expertList" target="_self">专家顾问库</a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }blog/list?from=0&blogType=1" target="_self">资讯资源 </a></li>
			</ul>
		</div>
	</nav>
</div>