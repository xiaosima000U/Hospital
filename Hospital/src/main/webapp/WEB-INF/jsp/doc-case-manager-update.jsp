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
								修改病例
							</h1>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form">

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 是否初诊</label>

										<div class="col-sm-9">
											<input type="radio" name="isfirst" id="isfirst" value="1" <c:if test="${map.isfirst eq '1' }"><c:out value="checked='checked'"/></c:if> class="ace">
											&nbsp;&nbsp;<span class="lbl">&nbsp;&nbsp;初诊</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="isfirst" id="isfirst" value="0" <c:if test="${map.isfirst eq '0' }"><c:out value="checked='checked'"/></c:if> class="ace">
											<span class="lbl">&nbsp;&nbsp;复诊</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">病情诊断</label>
										<div class="col-sm-9">
											<textarea type="text" id="diagnosis" class="col-xs-10 col-sm-5">
											${map.diagnosis}
											</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">治疗方案</label>
										<div class="col-sm-9">
											<textarea type="text" id="treat" class="col-xs-10 col-sm-5">
												${map.treat}
											</textarea>
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" onclick="casesubmit();" type="button">
												<i class="icon-ok bigger-110"></i>
												提交修改
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
		<form id="caseAddSubmit" method="post" action="<%=path%>/doctor/doctorCaseUpdateSubmit">
			<input type="hidden" name="formisfirst" id="formisfirst"/>
			<input type="hidden" name="formdiagnosis" id="formdiagnosis"/>
			<input type="hidden" name="formtreat" id="formtreat"/>
			<input type="hidden" name="formcaseid" id="formcaseid" value="${map.caseid}"/>
		</form>
		<script type="text/javascript">
		function casesubmit(){
				var isfirst = $("input[type='radio']:checked").val();
				var diagnosis=$("#diagnosis").val();
				var treat=$("#treat").val();
				if(isfirst=="" || isfirst==null || isfirst==undefined){
					alert("请输入病人是否初诊");
					return false;
				}
				if(isfirst=="" || isfirst==null || isfirst==undefined){
					alert("请输入病情诊断");
					return false;
				}
				if(isfirst=="" || isfirst==null || isfirst==undefined){
					alert("请输入治疗方案");
					return false;
				}
				$("#formisfirst").attr("value",isfirst);
				$("#formdiagnosis").attr("value",diagnosis.trim());
				$("#formtreat").attr("value",treat.trim());
				$.ajax({
				   type: "POST",
				   url: "<%=path%>/doctor/doctorCaseUpdateSubmit",
				   data: {"formisfirst":isfirst,"formdiagnosis":diagnosis.trim(),"formtreat":treat.trim(),"formcaseid":"${map.caseid}"},
				   success: function(data){
				     alert(data.msg);
				     window.location.href="<%=path%>/doctor/doctorCaseManager";
				   }
				});
				
		}
		</script>
		<jsp:include page="/WEB-INF/include/js/jsbottomcommon.jsp"></jsp:include>
	</body>
</html>