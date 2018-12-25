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
								用户信息
							</h1>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 用户名</label>

										<div class="col-sm-9">
										<label>${user.username}</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名</label>

										<div class="col-sm-9">
										<input type="text" id="realname" value="${patient.name }" placeholder="输入姓名" class="col-xs-10 col-sm-5">
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 性别 </label>

										<div class="col-sm-9">
											<input type="radio" name="sex" id="sex" <c:if test="${patient.sex =='male'}"><c:out value="checked='checked'"/></c:if> value="male" class="ace">
											&nbsp;&nbsp;<span class="lbl">&nbsp;&nbsp;男</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="sex"  id="sex" <c:if test="${patient.sex =='famale'}"><c:out value="checked='checked'"/></c:if> value="famale" class="ace">
											<span class="lbl">&nbsp;&nbsp;女</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">出生日期</label>

										<div class="col-sm-9">
											<input id="brith" type="text" value="${patient.brith}"/>
											<img onclick="WdatePicker({el:'brith'})" src="<%=path %>/assets/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">体重</label>
										<div class="col-sm-9">
											<input type="text" id="weight" value="${patient.weight }" placeholder="输入体重" class="col-xs-10 col-sm-5">
											<span>&nbsp;&nbsp;KG</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">民族</label>
										<div class="col-sm-9">
											<input type="text" id="nation" value="${patient.nation }" placeholder="输入民族" class="col-xs-10 col-sm-5">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">身份证号</label>
										<div class="col-sm-9">
											<input type="text" id="idcardnum" value="${patient.idcardnum }" placeholder="输入身份证号" class="col-xs-10 col-sm-5">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">联系地址</label>
										<div class="col-sm-9">
											<input type="text" id="address" value="${patient.address }" placeholder="输入联系地址" class="col-xs-10 col-sm-5">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">过敏源</label>
										<div class="col-sm-9">
											<input type="text" id="anaphylactogen" value="${patient.anaphylactogen }" placeholder="输入过敏源" class="col-xs-10 col-sm-5">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">联系电话</label>
										<div class="col-sm-9">
											<input type="text" id="phonenum" value="${patient.phonenum }" placeholder="输入联系电话" class="col-xs-10 col-sm-5">
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" onclick="patientInfoUpdate(${patient.patientid});" type="button">
												<i class="icon-ok bigger-110"></i>
												确认修改
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
				</div>
			<script type="text/javascript">
			function patientInfoUpdate(patientid){
				var sex = $("input[type='radio']:checked").val();
				var brith=$("#brith").val();
				var realname=$("#realname").val();
				var weight=$("#weight").val();
				var nation=$("#nation").val();
				var idcardnum=$("#idcardnum").val();
				var address=$("#address").val();
				var phonenum=$("#phonenum").val();
				var anaphylactogen=$("#anaphylactogen").val();
				$.ajax({
				   type: "POST",
				   url: "<%=path%>/user/userPatientInfoUpdate",
				   data: {"patientid":patientid,
				  		  "sex":sex,
				   		  "brith":brith,
				   		  "weight":weight,
				   		  "realname":realname,
				   		  "nation":nation,
				   		  "idcardnum":idcardnum,
				   		  "address":address,
				   		  "anaphylactogen":anaphylactogen,
				   		  "phonenum":phonenum},
				     success: function(data){
				     alert(data.msg);
				     window.location.reload();
				   }
				});
			}
			</script>
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>