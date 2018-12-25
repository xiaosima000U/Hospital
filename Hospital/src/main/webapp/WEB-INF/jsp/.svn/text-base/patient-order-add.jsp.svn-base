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
		<jsp:include page="/WEB-INF/include/css/common.jsp"/>
		<jsp:include page="/WEB-INF/include/js/common.jsp"/>
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
								预约新增
							</h1>
						</div>

						<div class="row">
							<div class="col-xs-12">

								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">预约科项</label>
										<div class="col-sm-9">
											<select id ="subject" onchange="change();">
												<option value="">请选择</option>
											<c:forEach items="${subjectList}" var="sub">
												<option value="${sub.subjectid}">${sub.subjectname}</option>
											</c:forEach>
											</select>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">预约医生</label>

										<div class="col-sm-9">
											<select id="doctor">
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 预约日期 </label>

										<div class="col-sm-9">
											<input id="orderdate"  type="text"/>
											<img onclick="WdatePicker({el:'orderdate'})" src="<%=path %>/assets/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button" onclick="ordersubmint();">
												<i class="icon-ok bigger-110"></i>
												确定预约
											</button>
										</div>
									</div>
								</form>
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
				</div><!-- /.main-container-inner -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div>
		<script type="text/javascript">
		function change(){
		var subject =$("#subject").val();
		$.ajax({
				   type: "POST",
				   url: "<%=path%>/user/getDoctors",
				   data: {"subject":subject},
				   success: function(data){
				     var doctor = $("#doctor").val();
				     var dochtml = $("#doctor");
				     for(var i=0;i<data.doctor.length;i++){
				     	dochtml.append("<option value='"+data.doctor[i].doctorid+"'>"+data.doctor[i].realname+"</option>");
				     }
				   }
				});
		}
		
		function ordersubmint(){
			var subjectid = $("#subject").val();
			var doctorid = $("#doctor").val();
			var orderdate = $("#orderdate").val();
			$.ajax({
				   type: "POST",
				   url: "<%=path%>/user/userOrderAddSubmit",
				   data: {"subjectid":subjectid,"doctorid":doctorid,"orderdate":orderdate},
				   success: function(data){
				   	alert(data.msg);
				   	window.location = "<%=path%>/user/userOrder";
				   }
				});
			
		}
		</script>
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>