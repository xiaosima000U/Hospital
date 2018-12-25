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
		<script src="<%=path%>/assets/js/jquery.js"></script>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<jsp:include page="/WEB-INF/include/css/common.jsp"/>
		<jsp:include page="/WEB-INF/include/js/common.jsp"/>
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
					<div class="page-content">
						<div class="page-header">
							<label>病人编号：</label>${patient.patientid }&nbsp;&nbsp;&nbsp;&nbsp;
							<label>病人姓名：</label>${patient.patientname }&nbsp;&nbsp;&nbsp;&nbsp;<br>
							<label>病人诊断：</label>${patient.diagnosis }&nbsp;&nbsp;&nbsp;&nbsp;
							<label>治疗方案：</label>${patient.treat }&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form">

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">费用种类</label>

										<div class="col-sm-9">
											<select id="feecategory" onchange="getmedicinal();">
												<option value="2">挂号费</option>
												<option value="1">医药费</option>
												<option value="3">门诊费</option>
											</select>
										</div>
									</div>
									<div class="form-group" id="divmedicinal" style="display:none;">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">药品</label>

										<div class="col-sm-9">
											<select id="medicinalid">
												<c:forEach items="${medicinallist}" var="medi">
													<option value="${medi.medicinalid}">${medi.medicinalname}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group" id="divmedicinalnum" style="display:none;">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">数量</label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" id="medicinalnum"/>
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" onclick="addmedicinal(${patient.caseid});" type="button">
												<i class="icon-ok bigger-110"></i>
												提交
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="button" onclick="window.location.replace('<%=path%>/doctor/doctorCaseManager')">
												<i class="icon-undo bigger-110"></i>
												完成
											</button>
										</div>
									</div>
								</form>
							</div><!-- /.col -->
						</div>
						
						<div class="row" id="medicinallist" <c:if test="${empty feelist}">style="display:none;"</c:if> >
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th style="width:7%">病例编号</th>
														<th style="width:6%">费用种类</th>
														<th style="width:6%">药品名称</th>
														<th style="width:6%">价格</th>
														<th style="width:10%">数量</th>
														<th style="width:13%">操作</th>
													</tr>
												</thead>

												<tbody id="tabelmedicinal">
												
														<c:if test="${not empty feelist}">
															<c:forEach items="${feelist}" var ="fee">
																<tr class="">
																	<td>${fee.caseid }</td>
																	<td>
																		<c:if test="${fee.feecategory=='1'}"><c:out value="医药费"/></c:if>
																		<c:if test="${fee.feecategory=='2'}"><c:out value="挂号费"/></c:if>
																		<c:if test="${fee.feecategory=='3'}"><c:out value="门诊费"/></c:if>
																	</td>
																	<td>${fee.medicinalname }</td>
																	<td>${fee.medicinalprice }</td>
			
																	<td>${fee.feemedicinalnum }</td>
																	<td>
																		<button onclick="doctorMedicinalDelete(${fee.feeid});">删除</button>
																	</td>
																</tr>
															</c:forEach>
														</c:if>
														<c:if test="${empty feelist}">
															<tr class="">
																<td>
																无费用数据
																</td>
															</tr>
														</c:if>
															


												</tbody>
											</table>
										</div><!-- /.table-responsive -->
									</div><!-- /span -->
								</div>
							</div><!-- /.col -->
						</div>
					</div><!-- /.page-content -->
				</div>
				</div><!-- /.main-container-inner -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div>
		<script type="text/javascript">
		function getmedicinal(){
			var feecategory = $("#feecategory").val();
			if(feecategory=='1'){
				$("#divmedicinal").show();
				$("#divmedicinalnum").show();
			}
			if(feecategory!='1'){
				$("#divmedicinal").hide();
				$("#divmedicinalnum").hide();
			}
		}
		function addmedicinal(caseid){
			$("#medicinallist").show();
			var feecategory = $("#feecategory").val();
			var medicinalid = $("#medicinalid").val();
			var medicinalnum = $("#medicinalnum").val();
			$.ajax({
			   type: "POST",
			   url: "<%=path%>/doctor/doctorMedicinalAddInput",
			   data: {"caseid":caseid,
			   		  "feecategory":feecategory,
			   		  "medicinalid":medicinalid,
			   		  "medicinalnum":medicinalnum},
			   	 success: function(data){
			     window.location.reload();
			   }
			});
		}
		function doctorMedicinalDelete(feeid){
			$.ajax({
				   type: "POST",
				   data: {"feeid":feeid},
				   url: "<%=path%>/doctor/doctorMedicinalDelete",
				   success: function(data){
				     window.location.reload();
				   }
				});
		}
		</script>
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>