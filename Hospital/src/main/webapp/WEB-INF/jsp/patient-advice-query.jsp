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
						<div class="page-header">
							<h1>
								我的咨询列表
							</h1>
						</div>
						<button class="width-15 pull-left btn btn-sm btn-primary" onclick="window.location.replace('<%=path%>/user/userDoctorAdviceAdd')">新增咨询</button>
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
														<th style="width:7%">咨询编号</th>
														<th style="width:12%">医生编号（姓名）</th>
														<th style="width:6%">所属科别</th>
														<th style="width:30%">咨询内容</th>
														<th style="width:10%">咨询时间</th>
														<th style="width:25%">回复内容</th>
														<th style="width:10%">回复时间</th>
													</tr>
												</thead>

												<tbody>
												
													<c:if test="${not empty advicelist}">
														<c:forEach items="${advicelist}" var ="advice">
															<tr class="">
																<td class="center">${advice.adviceid}</td>
																<td>${advice.doctorid}（${advice.doctorname}）</td>
																<td>${advice.subjectname}</td>
																<td style="word-break:break-all;">${advice.adivcecontent}</td>
																<td>${advice.advicedate}</td>
		
																<td style="word-break:break-all;">${advice.adviceanswer}</td>
																<td>${advice.adviceanswerdate}</td>
															</tr>
														</c:forEach>
													</c:if>
													<c:if test="${empty advicelist}">
														<tr class="">
															<td colspan="7">
																暂无咨询信息
															</td>
														</tr>
													</c:if>
													
												</tbody>
											</table>
										</div><!-- /.table-responsive -->
									</div><!-- /span -->
								</div>
							</div><!-- /.col -->
						</div><!-- /.row -->
						<!-- 
						<div class="row"><div class="col-sm-6"><div class="dataTables_info" id="sample-table-2_info">Showing 1 to 10 of 23 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_bootstrap"><ul class="pagination"><li class="prev disabled"><a href="#"><i class="icon-double-angle-left"></i></a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li class="next"><a href="#"><i class="icon-double-angle-right"></i></a></li></ul></div></div></div>
					 -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>