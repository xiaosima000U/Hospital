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
								密码设置
							</h1>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户名</label>

										<div class="col-sm-9">
											<label>${user.username}</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 密码 </label>

										<div class="col-sm-9">
											<input type="password" id="password" placeholder="输入密码" class="col-xs-10 col-sm-5">
											<span class="help-inline col-xs-12 col-sm-7">
												<span class="middle">必输</span>
											</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 确认密码 </label>

										<div class="col-sm-9">
											<input type="password" id="repassword" placeholder="输入密码" class="col-xs-10 col-sm-5">
											<span class="help-inline col-xs-12 col-sm-7">
												<span class="middle">必输</span>
											</span>
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" onclick="patientPasswordUpdate();" type="button">
												<i class="icon-ok bigger-110"></i>
												确定
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
		function patientPasswordUpdate(patientid){
				var password=$("#password").val();
				var repassword=$("#repassword").val();
				if(password=="" || password==null || password==undefined){
					alert("请输入密码");
					return false;
				}
				if(repassword=="" || repassword==null || repassword==undefined){
					alert("请输入二次密码");
					return false;
				}
				if(password != repassword){
					alert("两次密码输入不一致");
					return false;
				}
				$.ajax({
				   type: "POST",
				   url: "<%=path%>/user/userPatientPasswordUpdate",
				   data: {"password":password},
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