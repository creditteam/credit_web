<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>
<!-- .subfooter start -->
<div class="subfooter" style="background-color: #FF7F50;">
	<div  class="container">
		<div class="row" style="margin-top: 10px">
			<div class="col-md-2" style="color: #fff;">
				<div class="thum22">
				 	<img src="${basePath }hplus/img/kuaiyishou.jpg" class="img-rounded" width="100px" height="100px"  style="margin-left:10px "/>
		            <div>
		              <h5>微信扫一扫，关注我们</h5>
		            </div>
		         </div>
			</div>
			<div class="col-md-2" style="color: #fff;">
				<ul class="" style="margin-top: 20px">
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
			<div class="col-md-3" style="color: #fff;margin-top: 20px">
				<p>客服热线</p>
				<p style="font-size: 30">4008-338-997</p>
				<p>服务时间：09:00-21:00</p>
			</div>
			<div class="col-md-4" style="color: #fff;margin-top: 35px">
				<p class="text-left">Copyright © 2016 易收（深圳）网络科技有限公司 版权所有</p>
				<p>
					备案号：<a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" style="color: #fff;">粤ICP备16039401号-1</a>
				</p>
			</div>
		</div>
	</div>
</div>
<!-- .subfooter end -->
<!-- 安全认证图标 -->
 <div class="container">
<div class="row" class="text-center">
    <div class="col-md-3"></div>
	<div class="col-md-7">
	<a href="#"><img border="0" src="http://img.webscan.360.cn/status/pai/hash/ac5112035c900037431cc40fe17f7969"/></a >
	<a href="#"><img border="0" src="${basePath }hplus/img/r_315new.gif"/></a >
	<a href="http://szcert.ebs.org.cn/1f60b8a5-0561-43ce-ba2c-2ec54daec656"><img border="0" src="${basePath }hplus/img/r_gongshang.gif" /></a >
	<a href="http://union.rising.com.cn/InfoManage/attestation.aspx?p0=9NUNHAs6vfTrGtonWGdgx2GntAdbY4/Rk0Hh-U8plhc="><img border="0" src="${basePath }hplus/img/r_rxjianche.jpg"/></a >
	<a href="#"><img border="0" src="${basePath }hplus/img/r_cnnic.gif"/></a >
	</div>
	<div class="col-md-2"></div>
</div>
</div>


<!-- 统计代码 -->
<script type="text/javascript">
	var cnzz_protocol = (("https:" == document.location.protocol) ? " https://": " http://");
	document.write(unescape("%3Cspan id='cnzz_stat_icon_1259017486'%3E%3C/span%3E%3Cscript src='"+ cnzz_protocol
		                  + "s11.cnzz.com/z_stat.php%3Fid%3D1259017486%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
</script>
