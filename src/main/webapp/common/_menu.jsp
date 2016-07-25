
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>
<!-- 头部 -->
 <div class="row border-bottom" style="background-color: #555555;">
        <div class="row">      
        <div class="col-md-4 text-center" style=" float: left; vertical-align:top;">
	        <table>
			<tr>
			<td><span style="color: #A1ACB4">服务热线 ： 4008-338-997</span></td>
				<td>
                    <img id="weixem" alt="weixin" src="hplus/img/weixin88.png" style="height: 20px; padding-left: 50px">
                    <%--
                    <em id="wxewm" class="wxewmc"><img style="top: -20px" class="carousel-inner img-responsive img-rounded" alt="" src="hplus/img/kuaiyishou.jpg"></em>
                     --%>
				</td>
				<td><a target="_blank" href="http://www.weibo.com/p/1005055902432730/home?from=page_100505&mod=TAB&is_all=1#place" style=""><img height="20px" alt="微博" src="hplus/img/weibo88.png"></a></td>
				<td>
                    <img id="shoujiem" alt="" src="hplus/img/shouji88.png" style="height: 20px; width: 20px;padding-left: -2px">
                    <%--
                    <em id="sjewm" class="wxewmc"><img style="top: -20px" class="carousel-inner img-responsive img-rounded" alt="" src="hplus/img/yidashouji.png"></em>
                     --%>
                 </td>
                  <td></td>
			</tr>
		    </table>
        </div>
        <div class="col-md-4 text-center" style=" float: right; vertical-align:top;">
			<p class="text-center" style="color: #A1ACB4;">
			   <c:if test="${empty userInfo }">
				<a href="${basePath }user/tologin" style="margin-bottom: 1px; color: #A1ACB4;">会员登录</a>
				<a href="${basePath }user/toRegister" style="margin-bottom: 1px; color: #A1ACB4;">免费注册</a>
				</c:if>
				<c:if test="${not empty userInfo }">
				欢迎你，${userInfo.userEmail } &nbsp;&nbsp;&nbsp;
				<a  href="${basePath }user/index" target="_blank" style="color: #A1ACB4">用户中心</a>
				| <a  href="${basePath }/user/loginout" target="_blank" style="color: #A1ACB4">退出</a>
				</c:if> 
				| <a  href="${basePath }help/help.jsp"  target="_blank" style="color: #A1ACB4">关于我们</a>
				| <a  href="${basePath }help/help.jsp"  target="_blank" style="color: #A1ACB4">法律声明</a>
				| <a  href="${basePath }help/help.jsp"  target="_blank" style="color: #A1ACB4">已经反馈</a> 
				| <a  href="${basePath }help/help.jsp"  target="_blank" style="color: #A1ACB4">帮助中心</a>
			</table>
		</div> 
		</div>
</div> 

<!-- 导航菜单信息  bgein -->
<div class="row border-bottom white-bg">
	<nav class="navbar navbar-static-top" role="navigation">
		<div class="navbar-header">
		    <img alt="" src="${basePath }hplus/img/logo.jpg">
		</div>
		<div class="navbar-collapse collapse" id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a aria-expanded="false" role="button" href="${basePath }index" target="_self">首页</a></li>
				<li class="dropdown"><a aria-expanded="false" role="button" href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"> 债权大厅 <span class="caret"></span></a>
					<ul role="menu" class="dropdown-menu">
						<li><a href="${basePath }credit/navlist?creditType=1"  role="button" onclick="javacript:void(0)">债权追收</a></li>
						<li><a href="${basePath }credit/navlist?creditType=2"  role="button" onclick="javacript:void(0)">债权转让</a></li>
					</ul>
				</li>
				<li><a aria-expanded="false" role="button" href="${basePath }disposal.jsp">处置方式 </a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }reward/navlist" target="_self">线索悬赏 </a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }${basePath }credit/saveCredit?creditType=1" target="_self">一键发布</a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }reward/navlist" target="_self">专家顾问库</a></li>
				<li><a aria-expanded="false" role="button" href="${basePath }blog/list?from=0&blogType=1" target="_self">资讯资源 </a></li>
			</ul>
		</div>
	</nav>
</div>