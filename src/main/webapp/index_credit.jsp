<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-sm-6">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>债权追收</h5>
				<div class="ibox-tools">
					<a href="${basePath }credit/navlist?creditType=1">更多>></a>
				</div>
			</div>
			<div class="ibox-content">
				<table class="table table-hover no-margins">
					<thead>
						<tr>
							<th>所在地</th>
							<th>债务人</th>
							<th>金额(万元)</th>
							<th>佣金</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${creditdisposalList}" var="item">
						<tr>
							<td><span class="label label-warning">${item.debtCity}</span></td>
							<td>${item.debtName}</td>
							<td><i class="fa fa-clock-o"></i>${item.crAmount}</td>
							<td class="text-navy"><i class="fa fa-level-up"></i>${item.commisionRange}</td>
							<td><a href="${basePath }credit/creditDetails?id=${item.id}">查看</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>债权转让</h5>
				<div class="ibox-tools">
					<a href="${basePath }credit/navlist?creditType=2">更多>></a>
				</div>
			</div>
			<div class="ibox-content">
				<table class="table table-hover no-margins">
					<thead>
						<tr>
							<th>所在地</th>
							<th>债务人</th>
							<th>金额(万元)</th>
							<th>佣金</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${credittransferList}" var="item">
						<tr>
							<td><span class="label label-warning">${item.debtCity}</span></td>
							<td>${item.debtName}</td>
							<td><i class="fa fa-clock-o"></i>${item.crAmount}</td>
							<td class="text-navy"><i class="fa fa-level-up"></i>${item.commisionRange}</td>
							<td><a href="${basePath }credit/creditDetails?id=${item.id}">查看</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>