<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="123123"  prefix="utb" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="sidebar" id="sidebar">
					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>
							<span class="btn btn-info"></span>
							<span class="btn btn-warning"></span>
							<span class="btn btn-danger"></span>
						</div>
					</div>
					<ul class="nav nav-list">
						<li class="active">
							<a href="main-patient.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text">首页</span>
							</a>
						</li>
						${utb:gethtml(role,"LEFT")}
						<%-- <li>
							<a href="<%=path%>/user/userOrder" class="dropdown-toggle">
								<i class="icon-group"></i>
								<span class="menu-text">预约</span>

								<b class="arrow icon-angle-right"></b>
							</a>
						</li>
						<li>
							<a href="<%=path%>/user/userCaseQuery" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text">病例查询</span>

								<b class="arrow icon-angle-right"></b>
							</a>
						</li>
						<li>
							<a href="<%=path%>/user/userDoctorAdvice" class="dropdown-toggle">
								<i class="icon-asterisk"></i>
								<span class="menu-text">医生咨询</span>

								<b class="arrow icon-angle-right"></b>
							</a>
						</li>
						<li>
							<a href="<%=path%>/user/userDoctorEvaluate" class="dropdown-toggle">
								<i class="icon-barcode"></i>
								<span class="menu-text">医生评价</span>

								<b class="arrow icon-angle-right"></b>
							</a>
						</li> --%>
					</ul>
					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>
				</div>