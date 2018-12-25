<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="123123"  prefix="utb" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<title> XXX医院管理系统</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<script src="<%=path%>/assets/js/jquery.js"></script>
		<jsp:include page="/WEB-INF/include/css/common.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/include/js/common.jsp"></jsp:include>
	</head>
	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container" style="margin-top: 100px;">
							<div class="center">
								<h1>
									<i class="icon-leaf green"></i>
									<span class="red">XXX医院</span>
									<span class="white">管理系统${utb:show()}</span>
								</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h2 class=" blue lighter bigger">
												<div style="float:left;width:30%;margin-left:10%;">
													<label class="inline">
														<input type="radio" name="user" id="user" value="1" class="ace">
														<span class="lbl">  病人</span>
													</label>
												</div>
												<div style="float:left;width:30%;">
													<label class="inline">
														<input type="radio" name="user" id="user" value="2" class="ace">
														<span class="lbl">  管理员</span>
													</label>
												</div>
												<div style="float:left;width:30%;">
													<label class="inline">
														<input type="radio" name="user" id="user" value="3" class="ace">
														<span class="lbl">  医生</span>
													</label>
												</div>
											</h2>

											<div class="space-6"></div>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="name" id="name" class="form-control" placeholder="请输入用户名" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" name="password" id="password" class="form-control" placeholder="请输入密码" />
															<i class="icon-lock"></i>
														</span>
													</label>
													<div class="space"></div>

													<div class="clearfix">
														<button href="#" onclick="show_box('signup-box'); return false;" class="width-35 pull-left btn btn-sm btn-success">
															<i class="icon-key"></i>
															立即注册
														</button>
														<button type="button" onclick="userlogin()" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="icon-key"></i>
															立即登录
														</button>
													</div>
													<div class="space-4"></div>
												</fieldset>
										</div>
									</div>
								</div>

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h2 class=" blue lighter bigger">
												<div style="float:left;width:40%;margin-left:20%">
													<label class="inline">
														<input type="radio" name="user" value="1"  class="ace">
														<span class="lbl">  病人</span>
													</label>
												</div>
												<div style="float:left;width:40%;">
													<label class="inline">
														<input type="radio" name="user" value="3" class="ace">
														<span class="lbl">  医生</span>
													</label>
												</div>
											</h2>
												<fieldset>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" id="regname" class="form-control" placeholder="输入用户名" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="regpassword" class="form-control" placeholder="输入密码" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="regrepassword" class="form-control" placeholder="再次输入密码" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<!-- <label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															我接受
															<a href="#">《管理员用户使用声明》</a>
														</span>
													</label> -->

													<div class="space-24"></div>

													<div class="clearfix">
														<!-- <button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="icon-refresh"></i>
															重置
														</button> -->

														<button type="button" onclick="reg();" class="width-65 pull-right btn btn-sm btn-success">
															立即注册
															<i class="icon-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
										</div>

										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												<i class="icon-arrow-left"></i>
												返回登录
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form id="subform" name="subform" action="/Hospital/user/userLogin" method="post">
			<input type="hidden" name="name" id="formname" value="">
			<input type="hidden" name="password" id="formpassword" value="">
			<input type="hidden" name="usercate" id="formuser" value="">
		</form>
		<form id="registerform" name="regform" action="/Hospital/user/userRegister" method="post">
			<input type="hidden" name="regname" id="formname" value="">
			<input type="hidden" name="regpassword" id="formpassword" value="">
			<input type="hidden" name="regrepassword" id="formuser" value="">
		</form>
		<script type="text/javascript">
		function userlogin(){
			var user = $("input[type='radio']:checked").val();
			var name=$("#name").val();
			var password=$("#password").val();
			$("#formname").attr("value",name);
			$("#formpassword").attr("value",password);
			$("#formuser").attr("value",user);
			$("#subform").submit();
		}
		function reg(){
				var user = $("input[type='radio']:checked").val();
				var regname=$("#regname").val();
				var regpassword=$("#regpassword").val();
				var regrepassword=$("#regrepassword").val();
				if(regname=="" || regname==null || regname==undefined){
					alert("请输入用户名");
					return false;
				}
				if(regpassword=="" || regpassword==null || regpassword==undefined){
					alert("请输入密码");
					return false;
				}
				if(regrepassword=="" || regrepassword==null || regrepassword==undefined){
					alert("请输入二次密码");
					return false;
				}
				if(regrepassword != regpassword){
					alert("两次密码输入不一致");
					return false;
				}
				$.ajax({
				   type: "POST",
				   url: "<%=path%>/user/userRegister",
				   data: {"name":regname,"password":regpassword,"user":user},
				   success: function(data){
				     alert(data.msg);
				     window.location.reload();
				   }
				});
		}
		</script>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			function show_box(id) {
			 jQuery('.widget-box.visible').removeClass('visible');
			 jQuery('#'+id).addClass('visible');
			}
		</script>
	</body>
</html>