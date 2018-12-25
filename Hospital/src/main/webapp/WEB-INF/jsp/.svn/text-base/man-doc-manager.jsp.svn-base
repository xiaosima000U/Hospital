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
		<jsp:include page="/WEB-INF/include/jsp/head-manager.jsp"/>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<jsp:include page="/WEB-INF/include/jsp/left-manager.jsp"></jsp:include>
				<div class="main-content">

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
															医生编号
														</th>
														<th>医生姓名</th>
														<th>性别</th>
														<th class="hidden-480">出生日期</th>

														<th>所属科目</th>
														<th>职位</th>
														<th>擅长</th>
														<th>简介</th>
														<th>操作</th>
													</tr>
												</thead>

												<tbody>
													<c:if test="${not empty doctorlist}">
														<c:forEach items="${doctorlist}" var ="doctor">
															<tr class="">
																<td class="center">${doctor.doctorid}</td>
																<td>${doctor.doctorname}</td>
																<td>${doctor.sex}</td>
																<td class="hidden-480">${doctor.brith}</td>
																<td class="hidden-480">${doctor.subject}</td>
																<td>${doctor.profession}</td>
																<td>${doctor.goodat}</td>
																<td>${doctor.summary}</td>
																<td><input type="button" value="删除" onclick="managerDoctorDelete(${doctor.doctorid});"/>
																	<input type="button" value="修改" onclick="managerDoctorUpdate(${doctor.doctorid});"/>
																</td>
															</tr>
														</c:forEach>
													</c:if>
													<c:if test="${empty doctorlist}">
														<tr class="">
															<td>
															无病人信息
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
		</div>
		<form id="managerDoctorUpdate" action="<%=path%>/manager/managerDoctorUpdate" method="post">
			<input name="doctorid" type="hidden" id="doctorid">
		</form>
		<script type="text/javascript">
			function managerDoctorDelete(doctorid){
				$.ajax({
				   type: "POST",
				   url: "<%=path%>/manager/managerDoctorDelete",
				   data: {"doctorid":doctorid},
				   success: function(data){
				     alert(data.msg);
				     window.location.reload();
				   }
				});
			}
			function managerDoctorUpdate(doctorid){
				$("#doctorid").attr("value",doctorid);
				$("#managerDoctorUpdate").submit();
			}
		</script>
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>