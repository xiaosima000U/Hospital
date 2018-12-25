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
		<title> XXX医院管理系统（医生）</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<script src="<%=path%>/assets/js/jquery.js"></script>
		<jsp:include page="/WEB-INF/include/css/common.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/include/js/common.jsp"></jsp:include>
	</head>
	<body>
		<jsp:include page="/WEB-INF/include/jsp/head-doc.jsp"/>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<jsp:include page="/WEB-INF/include/jsp/left-doc.jsp"></jsp:include>
				<div class="main-content">
					<!-- <div style="margin-top:5px;margin-left:20px;">
					<label>病人编号:</label>&nbsp;<input type="text">&nbsp;&nbsp;&nbsp;&nbsp;
					<label>病人姓名:</label>&nbsp;<input type="text">&nbsp;&nbsp;&nbsp;&nbsp;
					
					<button>查询</button>
					<br>
					</div> -->
					<div class="page-content">
					
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>
															病人编号
														</th>
														<th>病人姓名</th>
														<th>性别</th>
														<th>体重</th>
														<th>民族</th>
														<th>出生日期</th>
														<th>过敏源</th>
														<th>操作</th>
													</tr>
												</thead>

												<tbody>
												<c:if test="${not empty patientlist}">
												<c:forEach items="${patientlist }" var="patient">
													<tr class="">
														<td class="center">
															${patient.patientid}
														</td>

														<td>
															<c:if test="${not empty patient.name}">
															${patient.name }
															</c:if>
															<c:if test="${empty patient.name}">
																未编辑
															</c:if>
															
														</td>
														<td>
															<c:if test="${not empty patient.sex}">
															${patient.sex }
															</c:if>
															<c:if test="${empty patient.sex}">
																未编辑
															</c:if>
														</td>
														<td >
															<c:if test="${not empty patient.weight}">
															${patient.weight }
															</c:if>
															<c:if test="${empty patient.weight}">
																未编辑
															</c:if>
														</td>
														<td class="hidden-480">
															<c:if test="${not empty patient.nation}">
															${patient.nation }
															</c:if>
															<c:if test="${empty patient.nation}">
																未编辑
															</c:if>
														</td>
														<td class="hidden-480">
															<c:if test="${not empty patient.brith}">
															${patient.brith }
															</c:if>
															<c:if test="${empty patient.brith}">
																未编辑
															</c:if>
														</td>
														<td class="hidden-480">
															<c:if test="${not empty patient.anaphylactogen}">
															${patient.anaphylactogen }
															</c:if>
															<c:if test="${empty patient.anaphylactogen}">
																未编辑
															</c:if>
														</td>
														<td>
														<button id="" onclick="cassAdd(${patient.patientid});">新增病例</button>
														
														</td>
													</tr>
												</c:forEach>
												</c:if>
												<c:if test="${empty patientlist}">
												<td cosplan="6">无信息</td>
												</c:if>
												</tbody>
											</table>
										</div><!-- /.table-responsive -->
									</div><!-- /span -->
								</div>
							</div><!-- /.col -->
						</div><!-- /.row -->
						
						<div class="row"><div class="col-sm-6"><div class="dataTables_info" id="sample-table-2_info">Showing 1 to 10 of 23 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_bootstrap"><ul class="pagination"><li class="prev disabled"><a href="#"><i class="icon-double-angle-left"></i></a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li class="next"><a href="#"><i class="icon-double-angle-right"></i></a></li></ul></div></div></div>
						
					</div><!-- /.page-content -->
					
					
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div>
		<form id="caseAddSubmit" action="<%=path%>/doctor/doctorCaseAddInput">
			<input type="hidden" name="patientid" id="patientid"/>
		</form>
		<script type="text/javascript">
			function cassAdd(patientid){
			$("#patientid").attr("value",patientid);
			$("#caseAddSubmit").submit();
			}
		</script>
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>