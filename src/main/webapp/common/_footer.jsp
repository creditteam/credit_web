
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>
<!-- .subfooter start -->
<div class="subfooter" style="background-color: #555555;">
	<div  class="container">
		<div class="row" style="margin-top: 50px">
			<div class="col-md-3" style="color: #fff">
				<p class="text-left">Copyright © 2016 易收（深圳）网络科技有限公司 版权所有</p>
				<p>
					备案号：<a target="_blank"
						href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">粤ICP备16039401号-1</a>
				</p>
			</div>
			<div class="col-md-2" style="color: #fff;">
				<ul class="">
					<li><a target="_blank" href="${basePath }help/help.jsp#about_us"
						style="color: #fff">关于我们</a></li>
					<li><a target="_blank" href="${basePath }help/help.jsp#service_us"
						style="color: #fff">服务协议</a></li>
					<li><a target="_blank" href="${basePath }help/help.jsp#job"
						style="color: #fff">人才招聘</a></li>
					<li><a target="_blank" href="${basePath }help/help.jsp#idea"
						style="color: #fff">意见反馈</a></li>
				</ul>

			</div>
			<div class="col-md-3" style="color: #fff;">
				<p>客服热线</p>
				<p style="font-size: 30">4008-338-997</p>
				<p>服务时间：09:00-21:00</p>
			</div>
			<div class="col-md-4" style="color: #fff">
				<p class="text-left">
					<img alt="" height="100px" src="${basePath }hplus/img/kuaiyishou.jpg">
				</p>
				<p>微信扫一扫，关注我们</p>
			</div>

		</div>
	</div>
</div>
<!-- .subfooter end -->
<!-- 安全认证图标 -->
 <div class="container">
<div class="row" class="text-center">
    <div class="col-md-4"></div>
	<div class="col-md-4">
	<a href=" "><img border="0" src="http://img.webscan.360.cn/status/pai/hash/ac5112035c900037431cc40fe17f7969"/></a >
	<script id="ebsgovicon" src="http://szcert.ebs.org.cn/govicon.js?id=1f60b8a5-0561-43ce-ba2c-2ec54daec656&width=100&height=137&type=1" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		var locationUrl = escape(document.location.href);
		document.write(unescape("%3Cscript")
						+ " charset='utf-8' src='http://union.rising.com.cn//InfoManage/TrojanInspect.aspx?p1=9NUNHAs6vfTrGtonWGdgx2GntAdbY4/Rk0Hh-U8plhc=&p2=ApY1LZ2B38I=&p3=9NUNHAs6vfTrGtonWGdgx/zHr1Jsh2fq&url="
						+ locationUrl + "' type='text/javascript'"
						+ unescape("%3E%3C/script%3E"));
	</script>
	</div>
	<div class="col-md-4"></div>
</div>
</div>

