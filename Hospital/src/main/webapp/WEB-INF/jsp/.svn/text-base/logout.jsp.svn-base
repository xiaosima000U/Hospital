<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Integer userid = (Integer) request.getSession().getAttribute("currUserid");
	if(userid>0){
		request.getSession().removeAttribute("currUserid");
	}
	response.sendRedirect(path+"/index.jsp");
%>
