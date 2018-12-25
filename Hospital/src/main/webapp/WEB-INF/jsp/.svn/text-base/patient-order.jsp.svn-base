<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8" />
		<title>控制台 - Bootstrap后台管理系统模版Ace下载</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<script src="<%=path%>/assets/js/jquery.js"></script>
		<jsp:include page="/WEB-INF/include/css/common.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/include/js/common.jsp"></jsp:include>
	</head>
	<body>
		<jsp:include page="/WEB-INF/include/jsp/head-patient.jsp"/>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<jsp:include page="/WEB-INF/include/jsp/left-patient.jsp"></jsp:include>
				<div class="main-content">
					<div class="page-content">
							<button class="width-15 pull-left btn btn-sm btn-primary" onclick="window.location.replace('<%=path%>/user/userOrderAdd')">新增预约</button>
						<br/>
						<br/>
						<br/>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>
															预约编号
														</th>
														<th>预约医生</th>
														<th>预约科目</th>
														<th><i class="icon-time bigger-110 hidden-480"></i>预约时间</th>
														<th class="hidden-480">预约状态</th>

														<th>操作</th>
													</tr>
												</thead>

												<tbody>
												<c:if test="${not empty orderlist }">
												<c:forEach items="${orderlist }" var="order">
													<tr class="">
														<td class="center">
															${order.orderid}
														</td>

														<td>
															${order.doctorname}
														</td>
														<td>${order.subject}</td>
														<td class="hidden-480">${order.orderdate}</td>
														<td class="hidden-480">
															${order.orderstate}
														</td>

														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
																<c:if test="${order.orderstate=='待发起'}">
																<input type="button" onclick="updateOrder(${order.orderid});" value="发起预约"/>
																</c:if>
																<c:if test="${order.orderstate!='待发起'}">
																---
																</c:if>
															</div>

														</td>
													</tr>
													</c:forEach>
													</c:if>
													<c:if test="${empty orderlist }">
													<tr>
														<td colspan="6">
															无数据
														</td>
													</tr>
													</c:if>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 
						<div class="row"><div class="col-sm-6"><div class="dataTables_info" id="sample-table-2_info">Showing 1 to 10 of 23 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_bootstrap"><ul class="pagination"><li class="prev disabled"><a href="#"><i class="icon-double-angle-left"></i></a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li class="next"><a href="#"><i class="icon-double-angle-right"></i></a></li></ul></div></div></div>
						 -->
					</div>
					
					
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
			
		</div>
		<script type="text/javascript">
		function updateOrder(orderid){
			$.ajax({
				   type: "POST",
				   url: "<%=path%>/user/updateOrder",
				   data: {"orderid":orderid},
				   success: function(data){
				     alert(data.msg);
				     window.location.reload();
				   }
				});
		}
		</script>
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>