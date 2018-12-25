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
								医生评价
							</h1>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">医生编号</label>

										<div class="col-sm-9">
											<label>${doctor.doctorid }</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">医生姓名</label>

										<div class="col-sm-9">
											<label>${doctor.doctorname }</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">医生所属科别</label>

										<div class="col-sm-9">
											<label>${doctor.subjectname }</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">医生擅长</label>

										<div class="col-sm-9">
											<label>${doctor.goodat }</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">医生简介</label>

										<div class="col-sm-9">
											<label>${doctor.summary }</label>
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">医生评价</label>

										<div class="col-sm-9">
											<input type="radio" name="evaluatelevel" id="evaluatelevel" value="5" class="ace">
											&nbsp;&nbsp;<span class="lbl">&nbsp;&nbsp;非常满意</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="evaluatelevel" id="evaluatelevel" value="4" class="ace">
											&nbsp;&nbsp;<span class="lbl">&nbsp;&nbsp;满意</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="evaluatelevel" id="evaluatelevel" value="3" class="ace">
											&nbsp;&nbsp;<span class="lbl">&nbsp;&nbsp;良好</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="evaluatelevel" id="evaluatelevel" value="2" class="ace">
											&nbsp;&nbsp;<span class="lbl">&nbsp;&nbsp;一般</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="evaluatelevel"  id="evaluatelevel" value="1" class="ace">
											<span class="lbl">&nbsp;&nbsp;很差</span>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">评价内容</label>
										<div class="col-sm-9">
											<textarea type="text" id="evaluatecontent" placeholder="输入评价" class="col-xs-10 col-sm-5">
											</textarea>
										</div>
									</div>
									
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button" onclick="userDoctorEvaluateAddSubmit(${doctor.doctorid });">
												<i class="icon-ok bigger-110"></i>
												立即评价
											</button>

											<!-- &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												重置
											</button> -->
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
			function userDoctorEvaluateAddSubmit(doctorid){
				var evaluatelevel = $("#evaluatelevel").val();
				var evaluatecontent = $("#evaluatecontent").val();
				if(evaluatelevel=="" || evaluatelevel==null || evaluatelevel==undefined){
					alert("请选择医生评价");
					return false;
				}
				if(evaluatecontent=="" || evaluatecontent==null || evaluatecontent==undefined){
					alert("请输入评价内容 ");
					return false;
				}
				$.ajax({
				   type: "POST",
				   url: "<%=path%>/user/userDoctorEvaluateAddSubmit",
				   data: {"doctorid":doctorid,"evaluatelevel":evaluatelevel,"evaluatecontent":evaluatecontent},
				   success: function(data){
				     alert(data.msg);
				     window.location.href="<%=path%>/user/userDoctorEvaluate";
				   }
				});
			}
		</script>
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>